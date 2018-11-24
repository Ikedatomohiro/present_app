class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all

  end

  def create
  end

  def edit
  end

  def show
    @user = current_user
    @users = User.all

  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def basket
  end

  def purchase
    @product = Product.all
  end

  def settlement
    @products = Product.all
    @carts = Cart.all
    if current_user.id.present?
      @carts = @carts.get_by_user_id current_user.id
    end

    @present = Present.new(params[:present])


  end

  def confirm
    @present = Present.all
    @products = Product.all
    @carts = Cart.all
      if current_user.id.present?
        @carts = @carts.get_by_user_id current_user.id
      end
  end

  def thanks
  end



end
