class CreatePresentOpponentProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :present_opponent_products do |t|
      t.references :present_opponent, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
