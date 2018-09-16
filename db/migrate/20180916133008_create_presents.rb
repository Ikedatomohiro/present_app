class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.integer :user
      t.integer :present_opponent
      t.date :present_date
      t.string :purpose
      t.date :parchase_date
      t.integer :budget
      t.string :message
      t.timestamps
    end
  end
end
