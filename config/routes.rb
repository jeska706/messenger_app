Rails.application.routes.draw do
    get :login, to: 'session#new'
    get :logout, to: 'sessions#destroy'

    resources :sessions
    resources :trainers, except: [:index] do
        resources :chats, except: [:update, :destroy]
    end
    resources :users, except: [:index] do
        resources :chats, except: [:update, :destroy]
    end
    root to: 'home#index'

end
