Rails.application.routes.draw do
	namespace :api do
    resources :messages, only: [:index, :create, :destroy]
    resources :chat_rooms
  end

  get "*path", to: "application#index"
  root 'application#index'
end
