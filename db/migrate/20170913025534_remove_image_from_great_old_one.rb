class RemoveImageFromGreatOldOne < ActiveRecord::Migration[5.1]
  def change
    remove_column :great_old_ones, :image, :string
  end
end
