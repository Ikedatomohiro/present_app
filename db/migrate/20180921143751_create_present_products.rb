class CreatePresentProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :present_products do |t|
      t.references :present
      t.references :product
      t.timestamps
    end
  end
end
