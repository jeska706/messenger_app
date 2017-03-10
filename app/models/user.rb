class User < ApplicationRecord
    has_many :chats
    has_many :trainers, through: :chats
end
