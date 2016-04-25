class AddNestedToFlares < ActiveRecord::Migration
  def self.up
    add_column :flares, :lft, :integer
    add_column :flares, :rgt, :integer
    add_column :flares, :parent_id, :integer
    add_column :flares, :depth, :integer
    add_column :flares, :children_count, :integer
  
  end


end
