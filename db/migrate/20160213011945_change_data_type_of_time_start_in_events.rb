class ChangeDataTypeOfTimeStartInEvents < ActiveRecord::Migration
  def change
  	change_column :events, :time_start, :time
  	add_column :events, :time_end, :time
  	remove_column :events, :date
  end
end
