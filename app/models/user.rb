class User < ApplicationRecord
  
  has_secure_password
  has_many :orders
  has_many :carted_goos

  validates :email, uniqueness: true

  def current_cart
    carted_goos.where(status: "carted")
  end

end
