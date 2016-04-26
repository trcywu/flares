class ChangeDateAndTimeInFlares < ActiveRecord::Migration
  def change
    rename_column :flares, :date, :start_date
    rename_column :flares, :time, :start_time
  end
end
