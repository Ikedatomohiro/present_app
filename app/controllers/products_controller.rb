class ProductsController < ApplicationController
  def index
  	@products = Product.all.order(created_at: :desc)

    if params[:name_or_characteristic].present?
#    @products = @products.get_by_characteristic params[:characteristic]
    @products = @products.get_by_name_or_characteristic params[:name_or_characteristic]
    end

    if params[:purpose_number].present?
    @products = @products.get_by_purpose_number params[:purpose_number]
    end

    if params[:budget_l].present?
    @products = @products.get_by_price_lower params[:budget_l]
    end
    if params[:budget_u].present?
    @products = @products.get_by_price_upper params[:budget_u]
    end

    if params[:age_group_number].present?
    @products = @products.get_by_age_group_number params[:age_group_number]
    end

    @purposes = Purpose.all

    if params[:checkbox].present?
    @products = @products.where(purpose_number: params[:checkbox].keys)
    end

  end

  def show
  	@product = Product.find_by(id: params[:id])
    @purposes = Purpose.all

  end

  def new
  	@product = Product.new(params[:product])
    @purposes = Purpose.all

  end

  def edit
  	@product = Product.find_by(id: params[:id])
    @purposes = Purpose.all

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
  	redirect_to products_index_path
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



end
