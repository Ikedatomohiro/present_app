class CreateProductManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :product_managements do |t|
      t.integer :shop_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.integer :stock
      t.date :derivery_date
      t.timestamps
    end
  end
end
