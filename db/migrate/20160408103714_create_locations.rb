class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :share_location_id
      t.integer :share_location_type
      t.float :x
      t.float :y
      t.timestamps null: false
    end
  end
end
