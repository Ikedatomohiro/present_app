class CreateProductManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :product_managements do |t|
      t.references :shop, foreign_key: true
      t.references :product, foreign_key: true
      t.date :derivery_date
      t.timestamps
    end
  end
end
