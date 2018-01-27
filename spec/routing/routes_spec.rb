# Use https://relishapp.com/rspec/rspec-rails/v/3-7/docs/routing-specs/named-routes
require 'rails_helper'

describe 'Routes Spec' do
  context 'SessionsController' do
    it "route 'users/sign_in' to 'users/sessions#create'" do
      expect(post: 'users/sign_in').to route_to('users/sessions#create')
    end

    it "route 'users/sign_in' to 'users/sessions#new'" do
      expect(get: 'users/sign_in').to route_to('users/sessions#new')
    end

    it "route 'users/sign_out' to 'users/sessions#destroy'" do
      expect(delete: 'users/sign_out').to route_to('users/sessions#destroy')
    end

    it "route 'users/auth/google_oauth2' to 'users/omniauth_callbacks#passthru'" do
      expect(post: 'users/auth/google_oauth2').to route_to('users/omniauth_callbacks#passthru')
    end

    it "route 'users/auth/google_oauth2/callback' to 'users/omniauth_callbacks#google_oauth2'" do
      expect(post: 'users/auth/google_oauth2/callback').to route_to('users/omniauth_callbacks#google_oauth2')
    end
  end

  context 'Devise' do
    it "route 'users/password/new' to 'devise/passwords#new'" do
      expect(get: 'users/password/new').to route_to('devise/passwords#new')
    end

    it "route 'users/password/edit' to 'devise/passwords#edit'" do
      expect(get: 'users/password/edit').to route_to('devise/passwords#edit')
    end

    it "route 'users/password' to 'devise/passwords#update'" do
      expect(patch: 'users/password').to route_to('devise/passwords#update')
    end

    it "route 'users/password' to 'devise/passwords#create'" do
      expect(post: 'users/password').to route_to('devise/passwords#create')
    end

    it "route '/users/cancel' to 'devise/registrations#cancel'" do
      expect(get: '/users/cancel').to route_to('devise/registrations#cancel')
    end
    it "route 'users/sign_up' to 'devise/registrations#new'" do
      expect(get: 'users/sign_up').to route_to('devise/registrations#new')
    end
    it "route 'users' to 'devise/registrations#update'" do
      expect(patch: 'users').to route_to('devise/registrations#update')
    end
    it "route 'users' to 'devise/registrations#destroy'" do
      expect(delete: 'users').to route_to('devise/registrations#destroy')
    end

    it "route 'users/confirmation/new' to 'devise/confirmations#new'" do
      expect(get: 'users/confirmation/new').to route_to('devise/confirmations#new')
    end

    it "route 'users/confirmation' to 'devise/confirmations#create'" do
      expect(post: 'users/confirmation').to route_to('devise/confirmations#create')
    end

    it "route 'users/confirmation' to 'devise/confirmations#show'" do
      expect(get: 'users/confirmation').to route_to('devise/confirmations#show')
    end
  end

# Use https://cbabhusal.wordpress.com/2015/12/15/rails-rspec-examples-of-routing-specs/
  ['orders', 'line_items', 'carts', 'products'].each do |controller|
    describe "#{controller.titleize} Controller" do
      it 'should have default action defined' do
        expect(get: "/#{controller}/").to be_routable
        expect(post: "/#{controller}/").to be_routable
        expect(get: "/#{controller}/:id").to be_routable
        expect(get: "/#{controller}/edit").to be_routable
        expect(patch: "/#{controller}/:id").to be_routable
        expect(delete: "/#{controller}/:id").to be_routable
      end
    end
  end
end
