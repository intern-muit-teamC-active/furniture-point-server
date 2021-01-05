class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :imageurl, null: false
      t.timestamps
    end
  end
end
