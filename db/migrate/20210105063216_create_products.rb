class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :imageurl, null: false
      t.integer :sales, null:false, default: 0
      t.integer :views, null:false, default: 0
      t.timestamps
    end
  end
end
