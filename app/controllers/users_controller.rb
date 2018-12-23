class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all

  end

  def create
    if @user.save
      NotificationMailer.send_confirm_to_user(@user).deliver
      redirect_to @user
    else
      render 'new'
    end
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
    @purposes = Purpose.all
    @genders = Gender.all

    @carts = Cart.all
    if current_user.id.present?
      @carts = @carts.get_by_user_id current_user.id
    end

  end

  def confirm
    @present = Present.all

  end

  def thanks
    NotificationMailer.send_confirm_to_user(current_user).deliver
  end



end
