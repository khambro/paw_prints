class RemoveUserIdColumnFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :user_id, :integer
  end
end
