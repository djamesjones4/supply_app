class CreatePaymentDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :payment_details do |t|
      t.bigint :order_id, null: false
      t.string :provider, null: false
      t.float :subtotal, null: false
      t.float :tax_decimal, default: 0.00, null: false
      t.float :total, null: false
      t.string :status

      t.timestamps
    end
  end
end
