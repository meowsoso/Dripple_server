class ConversationsController < ApplicationController
    before_action :authenticate_user,  only: [:index, :create]
    def index
        conversations = current_user.conversations.all
        render json: conversations
    end
def create
        
        # 1. Create a new conversation in the db.
        conversation = Conversation.new(conversation_params)

        if conversation.save

            # 2. Create each relationship between conversation and both users via join table user_conversation. Both conversation users are passed in params.

            sender = User.find params["sender_id"]
            conversation.users << sender

            receiver = User.find params["receiver_id"]
            conversation.users << receiver
            
            
            # ownership1 = Conversation.Users.new()
            # ownership1.conversation_id = conversation.id
            # ownership1.user_id = params["sender_id"]
            # ownership1.save
            # ownership2 = ConversationsUser.new()
            # ownership2.conversation_id = conversation.id
            # ownership2.user_id = params["receiver_id"]
            # ownership2.save

            # 3. Get the serialized data for the conversation as defined in ConversationSerializer
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ConversationSerializer.new(conversation)
            ).serializable_hash
            
             # 3. Broadcast new serialized conversation to both channel subscribers.
            ActionCable.server.broadcast(
                # Broadcast to general open channel
                # 'conversations_channel',

                # Broadcast to user/sender private channel
                "current_user_#{current_user.id}", 
                serialized_data
            )

            ActionCable.server.broadcast(
                # Broadcast to user/receiver private channel
                "current_user_#{params["receiver_id"]}", 
                serialized_data
            )
            
            head :ok 
        end
    end

    private
  
    def conversation_params
        params.require(:conversation).permit(:title, :sender_id, :receiver_id)
    end
end