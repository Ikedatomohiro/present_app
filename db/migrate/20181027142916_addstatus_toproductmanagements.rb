class AddstatusToproductmanagements < ActiveRecord::Migration[5.2]
  def change
    add_column :product_managements, :status, :boolean
  end
end
