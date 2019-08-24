class ShopController < ApplicationController
before_action :set_shop, only:[:index, :show]


  def index
  end

  def show
    @id = ShopManagement.find_by(user_id: current_user.id).shop_id
    @shop = Shop.find_by(id: @id)
  end

  def stock_management
    # shop = current_user.shop
    # @products = Product.where(id: shop.)

    # @shop_management = ShopManagement.find_by(user_id: current_user.id)
    @product_managements = ProductManagement.where(shop: current_user.shop)
      array_pm = []
        @product_managements.each do |product_management|
          array_pm.push(product_management.product_id)
        end
    @products = Product.where(id: array_pm)
    # ログインユーザーが持っている商品リストを検索

    @present_products = PresentProduct.all
    @shop_management = ShopManagement.find_by(user_id: current_user.id)
    @product = ProductManagement.new

  end


  def sales_results
#current_userの店名を取り出す
      # shop_management = ShopManagement.find_by(user_id: current_user.id)
      # @shop = Shop.find_by(id: shop_management.shop_id)

#関連付けができていれば一個飛ばしで呼べる
      @shop = current_user.shop
      @products = @shop.products.select(:id, :name).distinct

#current_user.idを使って、Presentに登録されているproductのレコードと販売した個数を数える
      # product_managements = ProductManagement.where(shop_id: shop_management.shop_id)
      # array_pm = []
      #   product_managements.each do |product_management|
      #     array_pm.push(product_management.product_id)
      #   end
      # present_products = PresentProduct.where(product_id: array_pm.uniq)
      # array_pp = []
      #   present_products.each do |present_product|
      #     array_pp.push(present_product.product_id)
      #   end
      #   @products = Product.where(id: array_pp.uniq)

#ここの流れもう一度確認
      # product_managements = ProductManagement.where(shop_id: @shop.id)
      # @products = []
      # product_managements.select(:shop_id,:product_id).distinct.each do |pp|
      #   @products.push(pp.product)
      # end

  end

  def new
  end
  

  def edit
  end
  

  def create
  end
  

  def update
  end
  

  def destroy
  end
  
  def add_stock

    @product = ProductManagement.new(
      stock: params[:product_management][:stock],
      shop_id: params[:shop_management][:shop_id],
      product_id: params[:product][:id]
      )
    @product.save!
    redirect_to "/"

  end

private

  def set_shop
    @shops = Shop.all
  end

end
