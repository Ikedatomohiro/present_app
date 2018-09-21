class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.references :user, foreign_key: true
      t.references :present_opponent, foreign_key: true
      t.integer :purpose_number
      t.date :present_date
      t.date :parchase_date
      t.integer :budget
      t.text :message
      t.timestamps
    end
  end
end
