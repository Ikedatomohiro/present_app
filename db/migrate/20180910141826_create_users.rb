class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :birthday, :date
    add_column :users, :mailaddress, :string    	
    add_column :users, :password, :string    	

      t.timestamps
    end
  end
end
