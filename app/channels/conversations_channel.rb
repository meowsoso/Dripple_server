class ConversationsChannel < ApplicationCable::Channel
  def subscribed
#createing a generic channel where all users connect
    # stream_from "conversations_channel"
    
    # creating a private channel for each user
    stream_from "current_user_#{current_user.id}"
  end
def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end