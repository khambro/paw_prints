class AddSitterIdColumnToSitterRecords < ActiveRecord::Migration
  def change
    add_column :sitter_records, :sitter_id, :integer
  end
end
