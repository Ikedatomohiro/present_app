class CartsController < ApplicationController
  def index
  	@carts = Cart.all.order(created_at: :desc)
  	@products = Product.all
  	@users = User.all
  end

  def show
  end

  def create
  	@cart = Cart.new(
  		user: params[:user_id],
  		product: params[:product_id]
  		)
  	@cart.save
  	redirect_to("/carts")
  end

  def update
  end

  def delete
  end
end

