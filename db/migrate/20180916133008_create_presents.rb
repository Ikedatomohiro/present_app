class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.integer :user_id, foreign_key: true
      t.integer :present_opponent_id, foreign_key: true
      t.integer :purpose_number
      t.date :present_date
      t.date :purchase_date
      t.integer :budget
      t.text :message
      t.string :authenticity_token
      t.timestamps
    end
  end
end
