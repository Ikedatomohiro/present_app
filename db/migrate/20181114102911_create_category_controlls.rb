class CreateCategoryControlls < ActiveRecord::Migration[5.2]
  def change
    create_table :category_controlls do |t|
      t.integer :product_id, foreign_key: true
      t.integer :category_id, foreign_key: true
      t.timestamps
    end
  end
end
