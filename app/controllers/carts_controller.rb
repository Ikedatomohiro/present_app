class CartsController < ApplicationController
  def index
    @product = Product.all
  end

  def show
  end

  def create
    @cart = Cart.new(
      user_id: current_user.id,
      product_id: params[:cart][:product_id]
      )
    @cart.save

    redirect_to("/carts")
  end

  def update
  end

  def destroy
    @cart = Cart.find_by(id: params[:id])
    @cart.destroy
    redirect_to("/carts")
  end
end

