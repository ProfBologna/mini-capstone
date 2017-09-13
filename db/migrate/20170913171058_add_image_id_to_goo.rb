class AddImageIdToGoo < ActiveRecord::Migration[5.1]
  def change
    add_column :great_old_ones, :image_id, :integer
  end
end
