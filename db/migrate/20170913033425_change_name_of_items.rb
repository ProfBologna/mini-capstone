class ChangeNameOfItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :product_id, :great_old_one_id
  end
end
