class CreatePurposeProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_products do |t|
      t.integer :purpose_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.timestamps
    end
  end
end
