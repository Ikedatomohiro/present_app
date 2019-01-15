class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.references :present, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :budget
      t.timestamps
    end
  end
end
