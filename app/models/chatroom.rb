class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :user_two, class_name: 'User'
  belongs_to :incident
  has_one_attached :photo
end
