Rails.application.routes.draw do
  devise_for :users
  root to: 'bikes#index'

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :rentals, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :rentals, only: [:index, :destroy]
  get "my_bikes", to: "owner_bikes#index"

  get "about", to: "pages#about"
  get "rent", to: "pages#rent"
  get "profile", to: "pages#profile"
  get "search", to: "pages#search"
  get "add", to: "pages#add"
end

