json.extract! trainer, :id, :name, :email, :password_digest, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
