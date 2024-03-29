Docs::Application.routes.draw do
  resources :offices
  post "offices/review"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end