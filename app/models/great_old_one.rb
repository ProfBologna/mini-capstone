class GreatOldOne < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders

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

  def default_image
    if images.count > 0
      images.first.url
    else
      "http://2.bp.blogspot.com/-pixZA6nLgg4/VEr5k88nklI/AAAAAAAADpA/mqFjGsYe6FY/s1600/TimEric7.jpg"
    end
  end

end
