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
    @present = Present.new(
      user_id: current_user.id,
      present_opponent_id: params[:present_opponent_id],
      purpose_number: params[:purpose_number],
      present_date: params[:present_date],
      parchase_date: params[:parchase_date],
      budget: params[:budget],
      message: params[:message],
      )
    # @present_opponent = PresentOpponent.new(
      # name: params[:present_opponent][:name],
      # gender: params[:gender],
      # mail_address: params[:present_opponent][:mail_address],
      # user_id: current_user.id,
      # )
    # @present_opponent.save!

    NotificationMailer.send_confirm_to_user(current_user).deliver

    redirect_to "/"


  end



  def cartitemdelete
    @cart = Cart.find_by(id: params[:cart][:id])
    @cart.destroy
    render :template => "users/settlement"
  end

end
