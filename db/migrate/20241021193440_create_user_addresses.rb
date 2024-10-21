class CreateUserAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :user_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address_line1, null: false
      t.string :address_line2
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
      t.string :country, null: false
      t.string :telephone

      t.timestamps
    end
  end
end
