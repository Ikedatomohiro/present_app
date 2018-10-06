class CreatePurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :purposes do |t|
      t.references :present, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :purpose_number
      t.string :purpose
      t.timestamps
    end
  end
end
