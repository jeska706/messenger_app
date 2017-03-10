json.extract! chat, :id, :message, :user_id, :trainer_id, :created_at, :updated_at
json.url chat_url(chat, format: :json)
