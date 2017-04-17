Rails.application.routes.draw do
  resources :followers
  resources :accounts
  resources :categories
  resources :citizens
  resources :votes
  resources :comments
  resources :regulations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
