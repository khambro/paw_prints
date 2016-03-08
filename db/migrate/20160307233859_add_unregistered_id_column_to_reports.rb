class AddUnregisteredIdColumnToReports < ActiveRecord::Migration
  def change
    add_column :reports, :unregistered_id, :integer
  end
end
