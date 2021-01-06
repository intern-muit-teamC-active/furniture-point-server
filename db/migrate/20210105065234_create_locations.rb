class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :product, null: false
      t.references :shop, null: false
      t.float :x, null: false
      t.float :y, null: false
      t.timestamps
    end
  end
end
