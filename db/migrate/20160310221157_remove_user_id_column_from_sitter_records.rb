class RemoveUserIdColumnFromSitterRecords < ActiveRecord::Migration
  def change
    remove_column :sitter_records, :user_id, :integer
  end
end
