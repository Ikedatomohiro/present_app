# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: "いけだとも", gender: 1, birthday: "1981-08-22", email: "to.tomo.tomohiro@gmail.com", password: "Tomohir0", admin: "true")
user = User.create(name: "ともひろ", gender: 1, birthday: "1981-08-22", email: "tomohiro.ikeda@gmail.com", password: "tomohiro", admin: "false")

Budget.create(budget_min: 500, budget_max: 1000)
Budget.create(budget_min: 1000, budget_max: 3000)
Budget.create(budget_min: 3000, budget_max: 5000)

Gender.create(gender_type: "未回答")
Gender.create(gender_type: "男性")
Gender.create(gender_type: "女性")
Gender.create(gender_type: "その他")

Purpose.create(purpose: "バレンタインデー")
Purpose.create(purpose: "誕生日")
Purpose.create(purpose: "クリスマス")
Purpose.create(purpose: "就職祝い")
Purpose.create(purpose: "お歳暮")
Purpose.create(purpose: "内祝い")

Product.create(name: "高級お菓子詰め合わせ", characteristic: "甘い、とにかく甘い。甘いものこそが何よりの癒やし。疲れた体に一粒食べれば気分転換にもってこい。女性同士の贈り物にピッタリ！", product_hp: "yohkan.com", :price  3500, image: "1.jpg")
Product.create(name: "チョコレート", characteristic: "大切な人へのささやかな贈り物。疲れたあの人もこれを食べて少し落ち着くでしょう。甘差控えめで甘いものが苦手な方も美味しくいただけます。", product_hp: "chocolate.com", :price  5000, image: "2.jpg")
Product.create(name: "ショルダーバッグ", characteristic: "シックなカラーが大人の女性を演出。落ち着いていながらアクティブなシーンでも大活躍！たくさんついたポケットで実用性とファッションの両立！", product_hp: "chocolatebag.com", :price  50000, image: "3.jpg")
Product.create(name: "手帳", characteristic: "手帳は仕事のできるビジネスマンには必須アイテム！大切なこともちょっとしたメモもあとに残るのは全て宝物。この手帳の書き味にハマること間違いなし！", product_hp: "notebook.com", :price  5000, image: "4.jpg")
Product.create(name: "ネクタイ", characteristic: "新社会人でもプロはプロ！仕事のできる社会人になるには見た目から！引き締まった紺色がクールなビジネスマンを演出！", product_hp: "necktie.com", :price  12000, image: "5.jpg")
Product.create(name: "ビール", characteristic: "キンキンに冷えたビールは汗をかいた後に飲めば疲れも吹っ飛ぶ旨さ！運動後、風呂上がり、そして休日のランチに贅沢なビール", product_hp: "beer.com", :price  15000, image: "6.jpg")

Shop.create(name: "ドンキ・ホーテ", web_site: "http://donkihote.com", mail: "to.tomo.tomohiro@gmail.com")
Shop.create(name: "よろずや", web_site: "http://nandemo.com", mail: "tomohiro@ymail.com")

ProductManagement.create(shop_id: 1, product_id: 1, stock: 10)
ProductManagement.create(shop_id: 1, product_id: 2, stock: 15)
ProductManagement.create(shop_id: 1, product_id: 3, stock: 20)
ProductManagement.create(shop_id: 2, product_id: 4, stock: 25)
ProductManagement.create(shop_id: 2, product_id: 5, stock: 30)
ProductManagement.create(shop_id: 2, product_id: 6, stock: 35)

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

ShopManagement.create(user_id: 1, shop_id: 1)
ShopManagement.create(user_id: 2, shop_id: 2)




