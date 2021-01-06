class CreateQrs < ActiveRecord::Migration[5.2]
  def change
    create_table :qrs do |t|
      t.integer :type, null: false
      t.integer :point
      t.timestamps
    end
  end
end
