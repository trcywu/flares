class AddAddressToFlares < ActiveRecord::Migration
  def change
    add_column :flares, :address, :string
  end
end
