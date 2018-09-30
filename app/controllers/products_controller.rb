class ProductsController < ApplicationController
  def index
  	@products = Product.order("number")
  	  	@products = Product.all
  end

  def show
  end

  def new
  	@product = Product.new(params[:product])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.new(params[:product])
  	if @product.save
  		redirect_to products_path
  	else
  		render "new"
  	end
  end

  def update
  end

  def destroy
  end



end
