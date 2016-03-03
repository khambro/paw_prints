class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.datetime :birthday
      t.string :breed
      t.string :color

      t.timestamps null: false
    end
  end
end
