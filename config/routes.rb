Rails.application.routes.draw do

  root to: 'home#index'
  resources :trainers, except: [:index] do
      resources :chats, except: [:update, :destroy]
  end
  resources :users, except: [:index] do
      resources :chats, except: [:update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
