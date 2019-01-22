class ProductsController < ApplicationController
  def index
    @purposes = Purpose.all
    @products = Product.paginate(:page => params[:page], :per_page => 5).all.order(created_at: :desc)

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

    if params[:checkbox].present?
    purpose_products = PurposeProduct.where(purpose_id: params[:checkbox].keys)
    puts params[:checkbox].keys
      purpose_products.each do |p|
        puts p.id
        puts p.product_id
      end
    array = [] #空の配列を定義
      purpose_products.each do |purpose_product|
  #    @products = Product.where(id: purpose_product.product_id)
  #    puts purpose_product.product_id
      array.push(purpose_product.product_id)
      end
      puts array
      puts array.uniq
    @products = @products.where(id: array.uniq)

    end

  end

  def show
    @product = Product.find(params[:id])
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
      name: params[:product][:name],
      characteristic: params[:product][:characteristic],
      product_hp: params[:product][:product_hp],
      price: params[:product][:price],
      purpose_number: params[:product][:purpose_number],
      age_group_number: params[:product][:age_group_number],
      image: "product_image.jpg"
      )
    @product.save!
    purposes = params[:checkbox].keys
      product = Product.find_by(name: params[:product][:name])
      purposes.each do |purpose|
        @purpose_product = PurposeProduct.new(
          purpose_id: purpose,
          product_id: product.id
          )
        @purpose_product.save!
      end
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
