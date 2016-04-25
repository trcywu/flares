class RemoveImageFromFlares < ActiveRecord::Migration
  def change
    remove_column :flares, :image, :string
  end
end
