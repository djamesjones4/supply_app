class CreateOrderDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :order_details do |t|
      t.references :user, null: false, foreign_key: true
      t.float :total, null: false
      t.references :payment_details, null: false, foreign_key: true

      t.timestamps
    end
  end
end
