class UsersController < ApplicationController

  def index
    # @users = User.joins(:genders)
    # @users = Gender.includes(:users)
    # ユーザー一覧は管理者権限でログインしたときだけ表示できる。
    if signed_in? && current_user.admin === true
      @users = User.all
      # @genders = Gender.all
    else
      redirect_to '/'
    end

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
      @presents = Present.where(user_id: params[:id]).order(created_at: :desc)
      @preesnt_products = PresentProduct.where(present_id: @presents)
  end

  def new
    @User = From::User.new
  end

  def create
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  def destroy
  end

  def purchase
    @product = Product.all
  end

  def settlement
    @products = Product.all
    @purposes = Purpose.all
    @genders = Gender.all
    @present = Present.new()
    @present.user_id = current_user

  end

  def confirm
    @presents = Present.all
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

  private
    #このcontroller内でのみ機能させるメソッド
    # Never trust parameters from the scary internet, only allow the white list through.
    # update メソッドで使用
    def user_params
      params.require(:user).permit(:name, :gender_id, :birthday, :email)
    end

end
