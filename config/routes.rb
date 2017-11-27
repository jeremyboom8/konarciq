Rails.application.routes.draw do
  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"
  get 'host', to: 'dashboards#host'

  resources :listings do
    resources :bookings, only: [:create, :show, :edit, :update] # :except or only:
    resources :reviews, only: [:create, :show, :edit, :update] # :except or only:
    resources :events, only: [:index, :show, :edit, :new] # :except or only:
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Attachinary::Engine => "/attachinary"
end
