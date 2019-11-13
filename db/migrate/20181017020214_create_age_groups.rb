class CreateAgeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :age_groups do |t|
      t.integer :present_opponent_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.integer :age_group_number
      t.timestamps
    end
  end
end
