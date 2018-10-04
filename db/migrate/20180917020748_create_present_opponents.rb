class CreatePresentOpponents < ActiveRecord::Migration[5.2]
  def change
    create_table :present_opponents do |t|
      t.string :name
      t.integer :gender
      t.integer :age_group_number
      t.string :mail_address
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
