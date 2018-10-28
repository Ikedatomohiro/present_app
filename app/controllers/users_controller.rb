class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def show
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
  end



end
