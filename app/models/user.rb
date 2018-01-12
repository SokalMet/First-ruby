class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :cart, dependent: :destroy
  before_save :downcase_email!

  def cart_empty?
    Cart.where(user_id: current_user.id).line_items.empty?
  end

  private

  def downcase_email!
    self.email.downcase!
  end
end
