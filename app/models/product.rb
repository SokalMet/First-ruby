class Product < ActiveRecord::Base
  validates :title, :length => { :minimum => 10, message: ': add 10 letters'}
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'URL shuld include formats: jpg, gif, png'
  }
end

def self.latest
  Product.order(:updated_at).last
end
