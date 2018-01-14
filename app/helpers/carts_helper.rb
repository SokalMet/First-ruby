module CartsHelper

  def show_info?
    current_user.present?
  end

  def goods_quantity
    current_cart.line_items.count
  end
end

