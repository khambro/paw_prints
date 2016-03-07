class RenameUnregisteredUsersTableToUnregisteredTable < ActiveRecord::Migration
  def change
    rename_table :unregistered_users, :unregistered
  end
end
