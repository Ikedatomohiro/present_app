class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :user_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.timestamps
    end
  end
end
