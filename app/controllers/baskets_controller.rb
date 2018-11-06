class BasketsController < ApplicationController
  def index
  	@baskets = Basket.all.order(created_at: :desc)
  	@products = Product.all
  	@users = User.all
  end

  def show
  end

  def create
  	@basket = Basket.new(
  		user_id_id: params[:user_id],
  		product_id_id: params[:product_id]
  		)
  	@basket.save
  	redirect_to("/baskets")
  end

  def update
  end

  def delete
  end
end
