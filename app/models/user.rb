class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_one :cart, dependent: :destroy
  before_save :downcase_email!

  has_many :messages
  has_many :conversations, foreign_key: :sender_id

  def cart_empty?
    Cart.where(user_id: current_user.id).line_items.empty?
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    unless user
      user = User.create(name: data['name'],
      email: data['email'],
      password: Devise.friendly_token[0,20]
      )
    end
    user
  end

  private

  def downcase_email!
    self.email.downcase!
  end
end
