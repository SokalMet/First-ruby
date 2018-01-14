module CartsHelper

  def goods_quantity
    current_cart.line_items.count
  end

  def cart_empty?
    goods_quantity == 0
  end
end

