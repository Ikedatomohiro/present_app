class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all

  end

  def create
  end

  def edit
  end

  def show
    @user = current_user
    @users = User.all
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def basket
  end

  def purchase
    @product = Product.all
  end

  def purchase_products
    @products = Product.all
    @carts = Cart.all
  end

  def settlement
    @product = Product.all
  end

  def thanks
  end



end
