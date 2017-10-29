class CartedGoo < ApplicationRecord
  belongs_to :great_old_one
  belongs_to :user
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :quantity, numericality: { greater_than: 0 }


def subtotal
  great_old_one.price * quantity
end

end
