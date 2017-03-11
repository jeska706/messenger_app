class User < ApplicationRecord
    has_secure_password
    has_many :chats
    has_many :trainers, through: :chats
end
