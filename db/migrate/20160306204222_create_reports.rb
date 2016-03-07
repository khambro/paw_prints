class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :pet_id
      t.integer :owner_id
      t.integer :sitter_id

      t.timestamps null: false
    end
  end
end
