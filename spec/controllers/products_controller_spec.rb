# spec/controllers/products_controller_spec.rb
# Use https://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

require 'rails_helper'
require 'rspec/rails'
require 'devise'

describe ProductsController do
  let(:user) { create :user, email: 'sokalshop2018@gmail.com', password: 'abcdefgh' }

  describe 'GET index' do
    specify 'html request, user logged out' do
      get :index
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(new_user_session_path)
    end

    specify 'html request, user logged in' do
      sign_in user
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
