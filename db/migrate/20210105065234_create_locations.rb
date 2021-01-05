class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :x, null: false
      t.integer :y, null: false
      t.timestamps
    end
  end
end
