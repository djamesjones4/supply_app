class AddUserTypeToUsers < ActiveRecord::Migration[7.2]
  def up
    create_enum :user_auth_type, ["base", "admin", "super_admin", "admin_read_only"]

    change_table :users do |t|
      t.enum :user_type, enum_type: "user_auth_type", default: "base"
    end
  end
end
