class AddBudgetMaxToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :budget_max, :integer
    add_column :budgets, :budget_min, :integer
  end
end
