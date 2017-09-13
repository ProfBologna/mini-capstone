class AddIdToGoo < ActiveRecord::Migration[5.1]
  def change
    add_column :great_old_ones, :supplier_id, :integer
  end
end
