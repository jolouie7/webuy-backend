class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user_id
      t.boolean :shipped
      t.integer :total
      t.boolean :paid
      t.integer :tracking_number
      t.boolean :complete

      t.timestamps
    end
  end
end
