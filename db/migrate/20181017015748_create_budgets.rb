class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :budget_max
      t.integer :budget_min
      t.timestamps
    end
  end
end
