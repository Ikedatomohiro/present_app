class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :characteristic
      t.string :product_hp
      t.integer :price
      t.integer :purpose_number
      t.integer :age_group_number
      t.string :image
      t.boolean :status, null: false, default: true

      t.timestamps
    end
  end
end
