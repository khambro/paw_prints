class AddUnregisteredIdColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :unregistered_id, :integer
  end
end
