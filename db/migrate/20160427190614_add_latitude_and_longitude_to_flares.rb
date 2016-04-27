class AddLatitudeAndLongitudeToFlares < ActiveRecord::Migration
  def change
    add_column :flares, :latitude, :float
    add_column :flares, :longitude, :float
  end
end
