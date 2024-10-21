class CreateCarts < ActiveRecord::Migration[7.2]
  def change
    create_table :carts do |t|
      t.references :user, null: false, foreign_key: true
      t.float :subtotal
      t.float :tax_percentage
      t.float :total

      t.timestamps
    end
  end
end
