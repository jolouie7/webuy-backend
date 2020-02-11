class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :rating
      t.string :description
      t.string :image
      t.integer :quantity

      t.timestamps
    end
  end
end
