class RemoveGooColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :great_old_one_id, :integer
    remove_column :orders, :quantity, :integer
    remove_column :carted_goos, :product_id, :integer
    add_column :carted_goos, :great_old_one_id, :integer
  end
end
