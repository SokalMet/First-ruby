Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => 'users/sessions' }

  resources :line_items
  resources :carts
  get 'store/index'

  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'store#index', as: 'store'
end
