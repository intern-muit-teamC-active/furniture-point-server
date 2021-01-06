class CreatePendings < ActiveRecord::Migration[5.2]
  def change
    create_table :pendings do |t|
      t.references :user, null: false
      t.integer :total_price, null:false
      t.integer :use_point, null: false
      t.timestamps
    end
  end
end
