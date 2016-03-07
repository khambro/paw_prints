class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :pet_id
      t.integer :owner_id
      t.integer :sitter_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
