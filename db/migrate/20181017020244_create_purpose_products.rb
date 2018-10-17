class CreatePurposeProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_products do |t|
    	t.references :purpose, foreign_key: true
    	t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
