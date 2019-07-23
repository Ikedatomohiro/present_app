class ProductsController < ApplicationController
  def index
    @purposes = Purpose.all
    @products = Product.where(status: true)
    @products = @products.paginate(:page => params[:page], :per_page => 5).all.order(created_at: :desc)

    if params[:name_or_characteristic].present?
      search_words = params[:name_or_characteristic].split
        search_words.each do |search_word|
          @products = @products.get_by_name_or_characteristic search_word
        end
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
      array = [] #空の配列を定義
        purpose_products.each do |purpose_product|
          array.push(purpose_product.product_id)
        end
      @products = @products.where(id: array.uniq)
    end

    @carts = Cart.all.order(created_at: :desc)
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

    # 中間モデルを生成 PurposeProduct
    purposes = params[:checkbox].keys
      product = Product.find_by(name: params[:product][:name])
      purposes.each do |purpose|
        @purpose_product = PurposeProduct.new(
          purpose_id: purpose,
          product_id: product.id
          )
        @purpose_product.save!
      end

    @product_management = ProductManagement.new(
      stock: params[:product_management][:stock]
      )
    redirect_to products_index_path
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.characteristic = params[:characteristic]
    @product.product_hp = params[:product_hp]
    @product.price = params[:price]
    @product.age_group_number = params[:age_group_number]

    if params[:image]
      @product.image = "#{@product.id}.jpg"
      image = params[:image]
      File.binwrite("public/product_images/#{@product.image}", image.read)
    end

    purpose_products = PurposeProduct.where(product_id: @product.id)
        array_pp = []
        purpose_products.each do |purpose_product|
          array_pp.push(purpose_product.product_id)
        end
        puts array_pp
        puts purpose_products.size
        purpose_products.destroy_all #更新することによって古くなる中間モデルを削除する

    purposes = params[:checkbox].keys
      purposes.each do |purpose|
        @purpose_product = PurposeProduct.new(
          purpose_id: purpose,
          product_id: @product.id
          )
        @purpose_product.save!
      end

      @product.save!
      redirect_to("/products/#{@product.id}")

  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to("/products/index")
  end

# Productを削除するが、プレゼント履歴には残したいので、レコードの削除ではなく、非表示にする。
  def dissapear
    @product = Product.find(params[:id])
    @product.status = false
    @product.save!
    redirect_to("/products/index")

  end




end
