class CartsController < ApplicationController
  def index
  	@carts = Cart.all.order(created_at: :desc)
  	@products = Product.all
  	@users = User.all

    if params[:user_id].present?
    @carts = @carts.get_by_user_id params[:user_id]
    end
  end

  def show
  end

  def create
  	puts params[:user_id]
  	puts "----------------"
  	@cart = Cart.new(
  		user_id: params[:cart][:user_id],
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

