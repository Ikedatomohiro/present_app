class ProductsController < ApplicationController
  def index
  	@products = Product.all.order(created_at: :desc)
  end

  def show
  	@product = Product.find_by(id: params[:id])
  end

  def new
  	@product = Product.new(params[:product])
  end

  def edit
  	@product = Product.find_by(id: params[:id])
  end

  def create
  	@product = Product.new(
  		name: params[:name],
  		characteristic: params[:characteristic],
  		image: "product_image.jpg"
  		)

      @product.save
  		redirect_to("/products")

  end

  def update
  	@product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.characteristic = params[:characteristic]
    @product.product_hp = params[:product_hp]
    @product.price = params[:price]

  	if params[:image]
  		@product.image = "#{@product.id}.jpg"
  		image = params[:image]
  		File.binwrite("public/product_images/#{@product.image}", image.read)
  	end

      @product.save
  		redirect_to("/products/#{@product.id}")

  end

  def destroy
  	@product = Product.find_by(id: params[:id])
  	@product.destroy
  end

  def search
  end

  def results
  end


end
