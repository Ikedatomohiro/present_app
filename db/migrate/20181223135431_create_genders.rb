class CreateGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :genders do |t|
      t.integer :gender
      t.string :gender_type
      t.timestamps
    end
  end
end
