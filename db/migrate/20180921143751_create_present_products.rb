class CreatePresentProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :present_products do |t|
      t.integer :present_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.float :evaluation
      t.string :comment
      t.timestamps
    end
  end
end
