Rails.application.routes.draw do
  get 'listings/index'

  get 'listings/show'

  get 'listings/create'

  get 'listings/update'

  get 'listings/destroy'

  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"

  resources :listings do
    resources :bookings, only: [:create, :show, :edit, :update] # :except or only:
    resources :reviews, only: [:create, :show, :edit, :update] # :except or only:
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
