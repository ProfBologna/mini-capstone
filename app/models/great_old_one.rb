class GreatOldOne < ApplicationRecord

  def sale_message
    sales_message = ""

    sales_message = "Discount horror!" if price < 600
    sales_message = "Everyday value!" if price > 600

    sales_message
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

end
