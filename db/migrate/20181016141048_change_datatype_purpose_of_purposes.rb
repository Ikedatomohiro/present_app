class ChangeDatatypePurposeOfPurposes < ActiveRecord::Migration[5.2]
  def change
    change_column :purposes, :purpose, :integer
  end
end
