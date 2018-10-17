class CreateAgeGroupProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :age_group_products do |t|
    	t.references :age_group, foreign_key: true
    	t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
