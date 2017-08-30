class CreateGreatOldOnes < ActiveRecord::Migration[5.1]
  def change
    create_table :great_old_ones do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
