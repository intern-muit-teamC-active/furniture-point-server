class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :product
      t.integer :kind, null: false
      t.string :comment, null: false
      t.integer :recommend, null: false
      t.timestamps
    end
  end
end
