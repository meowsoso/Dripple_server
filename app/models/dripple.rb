# == Schema Information
#
# Table name: dripples
#
#  id          :bigint           not null, primary key
#  title       :text
#  content     :text
#  image       :text
#  audio       :text
#  video       :text
#  longitude   :text
#  latitude    :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Dripple < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :category, :optional => true
    has_and_belongs_to_many :tags
end
