Rails.application.routes.draw do
  get 'blog/index'

  resources :orders
  devise_for :users, :controllers => {
      :sessions => 'users/sessions',
      :omniauth_callbacks => 'users/omniauth_callbacks'
  }

  resources :line_items
  resources :carts
  get 'store/index'
  get '/users' => redirect('/users/sign_up')
  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'store#index', as: 'store'
  resources :products do
    get :who_bought, on: :member
  end
  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
end
