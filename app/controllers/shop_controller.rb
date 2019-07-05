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
  




end
