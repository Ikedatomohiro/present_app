class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	
    	t.integer :name, null: false
    	t.integer :gender
    	t.date :birthday
    	t.string :mailaddress, null: false
    	t.string :password, null: false

      t.timestamps
    end
  end
end
