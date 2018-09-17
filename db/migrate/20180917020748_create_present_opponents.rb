class CreatePresentOpponents < ActiveRecord::Migration[5.2]
  def change
    create_table :present_opponents do |t|
      t.integer :name
      t.integer :gender
      t.string :age_group
      t.string :mail_address
      t.integer :user
      
      t.timestamps
    end
  end
end
