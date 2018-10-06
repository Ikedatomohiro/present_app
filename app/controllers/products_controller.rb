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
    @purpose = Purpose.find_by(id: params[:id])

  end

  def create
  	@product = Product.new(
  		name: params[:name],
  		characteristic: params[:characteristic],
  		product_hp: params[:product_hp],
  		price: params[:price],
  		purpose_number: params[:purpose_number],
  		age_group_number: params[:age_group_number],
 		image: "product_image.jpg"

  		)

      @product.save
  		redirect_to("/products/index")

  end

  def update
  	@product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.characteristic = params[:characteristic]
    @product.product_hp = params[:product_hp]
    @product.price = params[:price]
    @product.purpose_number = params[:purpose_number]
    @product.age_group_number = params[:age_group_number]

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
    redirect_to("/products/index")
  end

 


  def search
  end

  def results
  end


end
