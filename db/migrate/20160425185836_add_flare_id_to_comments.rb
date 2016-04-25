class AddFlareIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :flare_id, :integer
  end
end
