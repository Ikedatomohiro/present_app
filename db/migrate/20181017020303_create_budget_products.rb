class CreateBudgetProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_products do |t|
      t.references :budget, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
