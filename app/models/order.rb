class Order < ApplicationRecord
  
  belongs_to :great_old_one, optional: true
  belongs_to :user, optional: true

  # def initialize(options)
  #   super(options)
  #   calculate_totals
  # end

  def calculate_subtotal
   self.subtotal = great_old_one.price * quantity
  end

  def calculate_tax
   self.tax = subtotal * 0.09
  end

  def calculate_total
   self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end


end
