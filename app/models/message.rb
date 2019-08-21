# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  body       :string
#  user_id    :integer
#  channel_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
    belongs_to :user, :optional => true 
    belongs_to :conversation, :optional => true
end
