class Trainer < ApplicationRecord
    has_secure_password
    has_many :chats
    has_many :users, through: :chats
end
