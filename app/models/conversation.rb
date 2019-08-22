# == Schema Information
#
# Table name: channels
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Conversation < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :messages
end
