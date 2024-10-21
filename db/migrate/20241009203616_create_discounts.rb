class CreateDiscounts < ActiveRecord::Migration[7.2]
  def change
    create_table :discounts do |t|
      t.string :name, null: false
      t.float :discount_percent, null: false, default: 0.00
      t.boolean :active, null: false, default: false
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
