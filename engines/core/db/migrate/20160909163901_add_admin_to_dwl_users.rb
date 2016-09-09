class AddAdminToDwlUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :dwl_users, :admin, :boolean
  end
end
