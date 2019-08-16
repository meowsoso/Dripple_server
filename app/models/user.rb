# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :text
#  email           :text
#  password_digest :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    has_secure_password

    validates :email, :presence => true, :uniqueness => true
    has_many :dripples
end
