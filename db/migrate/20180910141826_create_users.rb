class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :name
      t.integer :gender_id, null: false, default: 1
      t.date :birthday
      t.boolean :admin, null: false, default: false
      t.timestamps
    end
  end
end
