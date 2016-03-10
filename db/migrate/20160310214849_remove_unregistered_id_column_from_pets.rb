class RemoveUnregisteredIdColumnFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :unregistered_id, :integer
  end
end
