class Trainer < ApplicationRecord
    has_many :chats
    has_many :users, through: :chats
end
