# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(:name => "いけだとも", :gender => 2, :birthday => "1981-08-22", :email => "to.tomo.tomohiro@gmail.com", :password => "Tomohir0", :admin => "true", :shopkeeper => "true")
user = User.create(:name => "ともひろ", :gender => 2, :birthday => "1981-08-22", :email => "tomohiro.ikeda@gmail.com", :password => "tomohiro", :admin => "false")


Budget.create(:budget_min => 500, :budget_max => 1000)
Budget.create(:budget_min => 1000, :budget_max => 3000)
Budget.create(:budget_min => 3000, :budget_max => 5000)

Gender.create(:gender => 1, :gender_type => "未回答")
Gender.create(:gender => 2, :gender_type => "男性")
Gender.create(:gender => 3, :gender_type => "女性")
Gender.create(:gender => 4, :gender_type => "その他")

Purpose.create(:purpose =>"バレンタインデー")
Purpose.create(:purpose =>"誕生日")
Purpose.create(:purpose =>"クリスマス")
Purpose.create(:purpose =>"就職祝い")
Purpose.create(:purpose =>"お歳暮")
Purpose.create(:purpose =>"内祝い")

Product.create(:name =>"高級お菓子詰め合わせ", :characteristic =>"甘い、とにかく甘い", :product_hp =>"yohkan.com", :price => 3500, :image => "1.jpg")
Product.create(:name =>"チョコレート", :characteristic =>"甘いけど少し苦い", :product_hp =>"chocolate.com", :price => 5000, :image => "2.jpg")
Product.create(:name =>"ショルダーバッグ", :characteristic =>"チョコレートカラー", :product_hp =>"chocolatebag.com", :price => 50000, :image => "3.jpg")
Product.create(:name =>"手帳", :characteristic =>"青い手帳", :product_hp =>"notebook.com", :price => 5000, :image => "4.jpg")
Product.create(:name =>"ネクタイ", :characteristic =>"新卒向け", :product_hp =>"necktie.com", :price => 12000, :image => "5.jpg")
Product.create(:name =>"ビール", :characteristic =>"苦いがうまい", :product_hp =>"beer.com", :price => 15000, :image => "6.jpg")


PurposeProduct.create(purpose_id: 1, product_id: 1)
PurposeProduct.create(purpose_id: 2, product_id: 1)
PurposeProduct.create(purpose_id: 6, product_id: 1)
PurposeProduct.create(purpose_id: 1, product_id: 2)
PurposeProduct.create(purpose_id: 2, product_id: 2)
PurposeProduct.create(purpose_id: 3, product_id: 2)
PurposeProduct.create(purpose_id: 1, product_id: 3)
PurposeProduct.create(purpose_id: 2, product_id: 3)
PurposeProduct.create(purpose_id: 2, product_id: 3)
PurposeProduct.create(purpose_id: 2, product_id: 4)
PurposeProduct.create(purpose_id: 3, product_id: 4)
PurposeProduct.create(purpose_id: 4, product_id: 4)
PurposeProduct.create(purpose_id: 1, product_id: 5)
PurposeProduct.create(purpose_id: 2, product_id: 5)
PurposeProduct.create(purpose_id: 4, product_id: 5)
PurposeProduct.create(purpose_id: 2, product_id: 6)
PurposeProduct.create(purpose_id: 5, product_id: 6)
PurposeProduct.create(purpose_id: 6, product_id: 6)

Shop.create(name: "ドンキ・ホーテ", web_site: "http://donkihote", mail: "to.tomo.tomohiro@gmail.com")
