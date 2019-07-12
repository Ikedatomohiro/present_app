class ShopController < ApplicationController
  def index
    @carts = Cart.all
      if signed_in?
        @carts = @carts.get_by_user_id current_user.id
      end

    @shops = Shop.all
  end

  def show
    @carts = Cart.all
      if signed_in?
        @carts = @carts.get_by_user_id current_user.id
      end

    @shops = Shop.all
    @id = ShopManagement.find_by(user_id: current_user.id).shop_id
    @shop = Shop.find_by(id: @id)

  end
  
  def stock_management
    @carts = Cart.all
      if signed_in?
        @carts = @carts.get_by_user_id current_user.id
      end

    shop_management = ShopManagement.find_by(user_id: current_user.id)
    @product_managements = ProductManagement.where(shop_id: shop_management.shop_id)
    @products = Product.where(id: @product_managements.ids)
    # ログインユーザーが持っている商品リストを検索

    @present_products = PresentProduct.all

    @shop_management = ShopManagement.find_by(user_id: current_user.id)

    @shops = Shop.all
    @product = ProductManagement.new

  end


  def sales_results
    @carts = Cart.all
      if signed_in?
        @carts = @carts.get_by_user_id current_user.id
      end



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



end
