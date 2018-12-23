# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Budget.create(:budget_min => 500, :budget_max => 1000)
Budget.create(:budget_min => 1000, :budget_max => 3000)
Budget.create(:budget_min => 3000, :budget_max => 5000)

Gender.create(:gender => 0, :gender_type => "未回答")
Gender.create(:gender => 1, :gender_type => "男性")
Gender.create(:gender => 2, :gender_type => "女性")
Gender.create(:gender => 3, :gender_type => "その他")
