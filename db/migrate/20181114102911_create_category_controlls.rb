class CreateCategoryControlls < ActiveRecord::Migration[5.2]
  def change
    create_table :category_controlls do |t|
    	t.references :product, foreign_key: true
    	t.string :category
      t.timestamps
    end
  end
end
