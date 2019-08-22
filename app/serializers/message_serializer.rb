class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :conversation_id, :created_at
end
