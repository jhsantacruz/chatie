Rails.application.routes.draw do
	namespace :api do
    resources :messages, only: [:index, :create, :destroy]
    resources :chat_rooms
    resources :users
  end

  get "*path", to: "application#index"
  root 'application#index'
end
