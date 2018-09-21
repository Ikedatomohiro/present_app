class CreatePresentProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :present_products do |t|
      t.references :present, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
