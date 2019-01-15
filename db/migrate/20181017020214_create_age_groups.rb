class CreateAgeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :age_groups do |t|
      t.references :present_opponent, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :age_group_number
      t.timestamps
    end
  end
end
