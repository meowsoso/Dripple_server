class MessagesController < ApplicationController
    def create
      # message = Message.new(message_params)
      message = Message.new(text: message_params["text"], conversation_id: message_params["conversation_id"], user_id: current_user.id)
  
      conversation = Conversation.find(message_params[:conversation_id])
      if message.save
        serialized_data = ActiveModelSerializers::Adapter::Json.new(
          MessageSerializer.new(message)
        ).serializable_hash
        MessagesChannel.broadcast_to conversation, serialized_data
        head :ok
      else
        puts "error saving message: #{message.errors.full_messages}"
        render json: message.errors, status: :bad_request
      end
    end
  
    private
  
    def message_params
      params.require(:message).permit(:text, :conversation_id)
    end
  end