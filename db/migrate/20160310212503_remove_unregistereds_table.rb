class RemoveUnregisteredsTable < ActiveRecord::Migration
  def change
    remove_table :unregistereds
  end
end
