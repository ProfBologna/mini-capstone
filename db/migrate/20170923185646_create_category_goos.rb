class CreateCategoryGoos < ActiveRecord::Migration[5.1]
  def change
    create_table :category_goos do |t|
      t.integer :category_id
      t.integer :great_old_one_id

      t.timestamps
    end
  end
end
