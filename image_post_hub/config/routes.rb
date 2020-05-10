Rails.application.routes.draw do
  resources :pictures
  get 'sessions/new'
  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[new create show]
end
