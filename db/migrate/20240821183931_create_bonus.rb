class CreateBonus < ActiveRecord::Migration[7.2]
  def change
    create_table :bonus do |t|
      t.string :comment, null: false
      t.integer :points, null: false
      t.bigint :creator, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end
  end
end
