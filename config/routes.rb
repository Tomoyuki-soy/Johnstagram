Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users
  resources :posts
  post '/guests/guest_sign_in', to: 'guests#new_guest'
end
