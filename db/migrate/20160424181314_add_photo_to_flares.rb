class AddPhotoToFlares < ActiveRecord::Migration
  def change
    add_column :flares, :photo, :string
  end
end
