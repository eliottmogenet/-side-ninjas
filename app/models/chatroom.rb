class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :chatroom_users, dependent: :destroy
  has_many :users, through: :chatroom_users
  # belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  # belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'
end
