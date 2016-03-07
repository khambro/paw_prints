class RenameUnregisteredTableToUnregisteredsTable < ActiveRecord::Migration
  def change
    rename_table :unregistered, :unregistereds  
  end
end
