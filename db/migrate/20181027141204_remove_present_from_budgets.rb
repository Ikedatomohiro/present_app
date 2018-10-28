class RemovePresentFromBudgets < ActiveRecord::Migration[5.2]
  def change
    remove_reference :budgets, :present_id, foreign_key: true
    remove_reference :budgets, :product_id, foreign_key: true
    remove_column :budgets, :budget, :integer

  end
end
