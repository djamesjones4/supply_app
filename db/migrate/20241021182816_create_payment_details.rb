class CreatePaymentDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :payment_details do |t|
      t.bigint :order_id
      t.string :provider
      t.string :status

      t.timestamps
    end
  end
end
