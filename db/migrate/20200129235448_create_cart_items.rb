class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.references :product_id
      t.references :order_id
      t.integer :count
      t.integer :total

      t.timestamps
    end
  end
end
