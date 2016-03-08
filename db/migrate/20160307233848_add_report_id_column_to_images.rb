class AddReportIdColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :report_id, :integer
  end
end
