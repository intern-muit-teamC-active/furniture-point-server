class CreateQrs < ActiveRecord::Migration[5.2]
  def change
    create_table :qrs do |t|
      t.integer :kind, null: false
      t.integer :point
      t.timestamps
    end
  end
end
