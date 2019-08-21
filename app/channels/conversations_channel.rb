class ConversationsChannel < ApplicationCable::Channel
  def subscribed
#createing a generic channel where all users connect
    # stream_from "conversations_channel"
    
    # creating a private channel for each user
    stream_from "current_user_#{current_user.id}"
  end

  def speak(data)
    message = Message.new(body: data['message'], user_id: current_user.id)
    message.save
    puts "#{message.errors.full_messages}"
    socket = { message: message.body }
    ConversationsChannel.broadcast_to("current_user_#{current_user.id}", socket)
  end

def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end