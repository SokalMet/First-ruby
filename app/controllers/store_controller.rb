class StoreController < ApplicationController
  def index
    @products = Product.order('created_at DESC').page(params[:page]).per_page(6)
  end
end
