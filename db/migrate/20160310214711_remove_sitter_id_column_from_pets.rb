class RemoveSitterIdColumnFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :sitter_id, :integer
  end
end
