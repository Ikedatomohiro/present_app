class ProductsController < ApplicationController
  def index
  	@products = Product.order("number")
  	  	@products = Product.all
  end

  def show
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
