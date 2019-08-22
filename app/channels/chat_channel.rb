class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_for 'chat_channel'
  end
  def speak(data)
    message = Message.new(body: data['message'], user_id: data['user_id'])
    message.save
    puts "#{message.errors.full_messages}"
    socket = { message: message.body }
    ChatChannel.broadcast_to('chat_channel', socket)
  end
  def unsubscribed; end
end