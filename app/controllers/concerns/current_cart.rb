module CurrentCart
  extend ActiveSupport::Concern
  included do
    helper_method :current_cart
  end

  def current_cart
    @current_cart ||= begin
      cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end
  end

  # private

  # def set_cart
  #   @cart = Cart.find(session[:cart_id])
  # rescue ActiveRecord::RecordNotFound
  #   @cart = Cart.create
  #   session[:cart_id] = @cart.id
  # end
end