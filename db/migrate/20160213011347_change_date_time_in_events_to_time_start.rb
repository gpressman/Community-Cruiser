class ChangeDateTimeInEventsToTimeStart < ActiveRecord::Migration
  def change
  	rename_column :events, :date_time, :time_start
  end
end
