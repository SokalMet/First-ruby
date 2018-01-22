module ApplicationHelper
  def img_url(product)
    if product.thumbnail.url
      return product.thumbnail.url
    elsif product.image_url
      product.image_url
    else
      'ImageNotFound.png'
    end
  end
end
