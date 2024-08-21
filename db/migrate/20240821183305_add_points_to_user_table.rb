class AddPointsToUserTable < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :points, :integer, null: true
  end
end
