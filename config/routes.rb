Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'users/relogin', :to => 'sessions#relogin'
    get 'users/resignup', :to => 'registrations#resignup'
  end

  resources :line_items
  resources :carts
  get 'store/index'

  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'store#index', as: 'store'
end
