class CartsController < ApplicationController
  def index
  	@carts = Cart.all.order(created_at: :desc)
  	@product = Product.all
  	@users = User.all

    if current_user.id.present?
      puts "----------------"
      @carts = @carts.get_by_user_id current_user.id
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
    NotificationMailer.send_confirm_to_user(current_user).deliver

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

