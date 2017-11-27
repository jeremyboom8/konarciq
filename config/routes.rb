Rails.application.routes.draw do
  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"
  get 'host', to: 'dashboards#host'

  resources :listings do
    resources :reviews, only: [:new, :create, :show, :edit, :update] # :except or only:
    resources :events, only: [:index, :show, :edit, :new] do  # :except or only:
      resources :bookings, only: [:new, :create, :show, :edit, :update]
    end # :except or only:
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Attachinary::Engine => "/attachinary"
end
