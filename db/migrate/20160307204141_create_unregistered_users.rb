class CreateUnregisteredUsers < ActiveRecord::Migration
  def change
    create_table :unregistered_users do |t|
      t.integer :sitter_id
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
