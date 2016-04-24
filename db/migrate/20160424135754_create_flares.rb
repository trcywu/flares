class CreateFlares < ActiveRecord::Migration
  def change
    create_table :flares do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :category
      t.string :location
      t.date :date
      t.time :time
      t.references :user

      t.timestamps null: false
    end
  end
end
