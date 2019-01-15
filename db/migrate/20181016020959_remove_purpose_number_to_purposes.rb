class RemovePurposeNumberToPurposes < ActiveRecord::Migration[5.2]
  def change
    remove_column :purposes, :purpose_number, :integer
  end
end
