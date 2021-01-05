class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :type, null: false
      t.string :comment, null: false
      t.integer :recommend, null: false
      t.timestamps
    end
  end
end
