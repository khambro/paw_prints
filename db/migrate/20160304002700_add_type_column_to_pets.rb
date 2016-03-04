class AddTypeColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :type, :string
  end
end
