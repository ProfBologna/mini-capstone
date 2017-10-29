class Category < ApplicationRecord
  has_many :category_goos
  has_many :great_old_ones, through: :category_goos

  
  validates :name, uniqueness: true

end
