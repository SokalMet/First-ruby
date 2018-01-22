class Product < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  has_many :line_items
  has_many :orders, through: :line_items

  after_initialize :init

  accepts_nested_attributes_for :line_items
  accepts_nested_attributes_for :orders

  before_save :prepare_description
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title, :length => { :minimum => 5, message: ': add 5 letters'}
  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'URL should include formats: jpg, gif, png'
  }
  mount_uploader :thumbnail, ThumbnailUploader

  def init
    image_not_found = self.image_url.blank?
    if image_not_found
      self.image_url = 'ImageNotFound.png'
    end
  end

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'have things on')
      return false
    end
  end
end

def self.latest
  Product.order(:updated_at).last
end

  private

def prepare_description
  self.description = ActionView::Base.full_sanitizer.sanitize(self.description).squish.delete("\n")
end