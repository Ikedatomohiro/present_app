class AddstatusToproducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :status, :boolean
  end
end
