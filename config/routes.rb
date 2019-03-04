Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:index, :new, :create, :destroy]

  post '/sessions/new', to: 'sessions#create'

end
