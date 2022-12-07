class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  has_one_attached :photo
end
