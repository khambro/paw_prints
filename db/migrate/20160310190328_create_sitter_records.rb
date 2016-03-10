class CreateSitterRecords < ActiveRecord::Migration
  def change
    create_table :sitter_records do |t|
      t.integer :user_id
      t.integer :pet_id
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
