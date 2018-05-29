Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/rent'
  get 'pages/profile'
  get 'pages/search'
  get 'pages/about'
  get 'pages/rent'
  get 'pages/profile'
  devise_for :users
  root to: 'bikes#index'

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :rentals, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :rentals, only: [:index, :destroy]

  get "about", to: "pages#about"
  get "rent", to: "pages#rent"
  get "profile", to: "pages#profile"
  get "search", to: "pages#search"
end
