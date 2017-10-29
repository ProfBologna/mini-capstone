class Order < ApplicationRecord
  
  belongs_to :user, optional: true
  has_many :great_old_ones, through: :carted_goos

  def calculate_subtotal
    sum = 0
    carted_goos.each do |carted_goo|
      sum += carted_goo.subtotal
    end
    self.subtotal = sum
  end

  def calculate_tax
    tax = self.subtotal * 0.09
  end

  def calculate_total
    subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
    save
  end

end
