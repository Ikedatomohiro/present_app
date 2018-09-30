class ProductsController < ApplicationController
  def index
  	@products = Product.order("number")
  	  	@products = Product.all
  end

  def show
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end



end
