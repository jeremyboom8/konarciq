Rails.application.routes.draw do
  get 'contact', to: "pages#contact"
  get 'guide', to: "pages#guide"
  get 'about', to: "pages#about"
  get 'host', to: 'dashboards#host'

  resources :listings do
    resources :reviews, only: [:create] # You can use :except or only:
    resources :events, only: [:index, :show, :edit, :new] do
      resources :bookings, only: [:show, :create, :new] do
        resources :payments, only: [:new, :create]
      end
    end
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Attachinary::Engine => "/attachinary"
end
