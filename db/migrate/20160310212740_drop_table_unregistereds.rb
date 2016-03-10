class DropTableUnregistereds < ActiveRecord::Migration
  def change
    drop_table(:unregistereds)
  end
end
