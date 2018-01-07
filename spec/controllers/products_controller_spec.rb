require 'rails_helper'

describe ProductsController, :type => :controller do
  let(:product) { FactoryGirl.create(:product) }

  describe 'GET index' do
    specify 'html request' do
      get :index
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
