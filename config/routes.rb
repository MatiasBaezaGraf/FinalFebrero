Rails.application.routes.draw do
  devise_for :users
  resources :cabins
  resources :payments
  resources :rates
  resources :rolls
  resources :vehicles

  devise_scope :user do
    authenticated :user do
      root "vehicles#index"
      #root "devise/sessions#destroy"
    end

    unauthenticated :user do
      root "devise/sessions#new", as: :user_unregistered
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
