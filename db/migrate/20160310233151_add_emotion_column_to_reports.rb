class AddEmotionColumnToReports < ActiveRecord::Migration
  def change
    add_column :reports, :emotion, :string
  end
end
