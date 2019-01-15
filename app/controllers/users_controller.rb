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
    @user = current_user
    @users = User.all
    @genders = Gender.all
  end

  def show
    @users = User.all
    @presents = Present.where(user_id: params[:id])
    @preesnt_products = PresentProduct.where(present_id: @presents)
  end

  def new
  end

  def create
  end

  def update
    @user = User.find(current_user.id)
    @user.name = params[:user][:name]
    @user.gender = params[:user][:gender]
    @user.birthday = params[:user][:birthday]
    @user.save!
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
    @present = Present.new()
    @carts = Cart.all
    if current_user.id.present?
      @carts = @carts.get_by_user_id current_user.id
    end
    @present.user_id = current_user
  end

  def confirm
    @present = Present.all
    @purposes = Purpose.all

  end

  def thanks
    NotificationMailer.send_confirm_to_user(current_user).deliver
    redirect_to "/"
  end



  def cartitemdelete
    @cart = Cart.find_by(id: params[:cart][:id])
    @cart.destroy
    render :template => "users/settlement"
  end

end
