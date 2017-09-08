class GreatOldOne < ApplicationRecord

  def sale_message
    if discounted?
      sale_message = "Discount horror!"
    else
      sale_message = "Everyday eldrich value!"
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

  def discounted?
    price < 600
  end

end
