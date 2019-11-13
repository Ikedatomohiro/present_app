class CreatePurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :purposes do |t|
      t.integer :present_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.string :purpose
      t.timestamps
    end
  end
end
