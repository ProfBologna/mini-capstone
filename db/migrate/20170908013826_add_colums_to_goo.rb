class AddColumsToGoo < ActiveRecord::Migration[5.1]
  def change
    change_column :great_old_ones, :description, :text
    change_column :great_old_ones, :price, "numeric USING CAST(price AS numeric)"
    change_column :great_old_ones, :price, :decimal, precision: 10, scale: 2
    add_column :great_old_ones, :in_stock, :boolean
  end
end
