class CreateAgeGroupProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :age_group_products do |t|
      t.integer :age_group_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.timestamps
    end
  end
end
