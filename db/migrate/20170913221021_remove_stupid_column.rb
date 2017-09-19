class RemoveStupidColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :great_old_ones, :image_id, :integer
  end
end
