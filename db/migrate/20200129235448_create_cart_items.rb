class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.references :product
      t.references :order
      t.integer :count
      t.integer :total

      t.timestamps
    end
  end
end
