class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    	t.references :product, foreign_key: true
    	t.string :category
      t.timestamps
    end
  end
end
