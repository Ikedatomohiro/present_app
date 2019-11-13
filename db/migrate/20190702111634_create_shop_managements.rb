class CreateShopManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_managements do |t|
      t.integer :user_id, foreign_key: true
      t.integer :shop_id, foreign_key: true
      t.timestamps
    end
  end
end
