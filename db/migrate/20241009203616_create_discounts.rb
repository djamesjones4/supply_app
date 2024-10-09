class CreateDiscounts < ActiveRecord::Migration[7.2]
  def change
    create_table :discounts do |t|
      t.string :name
      t.float :discount_percent
      t.boolean :active
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
