class PresentsController < ApplicationController

  def index
    @carts = Cart.all
    @genders = Gender.all
    render :template => "users/confirm"
  end

  def create
  @present_opponent = PresentOpponent.new(
    name: params[:present_opponent][:name],
    gender: params[:present_opponent][:gender],
    mail_address: params[:present_opponent][:mail_address],
    user_id: current_user.id,
    )
  @present = Present.new(
    user_id: current_user.id,
    purpose_number: params[:present][:purpose_number],
    present_date: params[:present][:present_date],
    purchase_date: params[:present][:purchase_date],
    budget: params[:present][:budget],
    message: params[:present][:message],
    )

  @products = Product.all
  @genders = Gender.all

  render :template => "users/confirm"
  end

  def set_present
    @present_opponent = PresentOpponent.new(
      name: params[:present_opponent][:name],
      gender: params[:present_opponent][:gender],
      mail_address: params[:present_opponent][:mail_address],
      user_id: current_user.id,
      )
    @present = Present.new(
      user_id: current_user.id,
      purpose_number: params[:present][:purpose_number],
      present_date: params[:present][:present_date],
      purchase_date: params[:present][:purchase_date],
      budget: params[:present][:budget],
      message: params[:present][:message],
      authenticity_token: params[:authenticity_token][0..24]
      )
    @products = Product.all
    @carts = Cart.all
    @genders = Gender.all
    @present_opponent.save!
      puts PresentOpponent.last.id
    @present.present_opponent_id = PresentOpponent.last.id
    @present.save!

    presentlastid = Present.last.id
    carts = Cart.where(user_id: current_user)
      carts.each do |cart|
        puts cart.product_id
        @present_product = PresentProduct.create(
        present_id: presentlastid,
        product_id: cart.product_id,
        )
        cart.delete
      end
    redirect_to products_user_thanks_path
  end

  def back
    @present = Present.new(
      message: params[:present][:message],
      purpose_number: params[:present][:purpose_number]
    )
    @present_opponent = PresentOpponent.new(
      name: params[:present_opponent][:name],
      mail_address: params[:present_opponent][:mail_address]
    )
    @products = Product.all
    @carts = Cart.all
    @purposes = Purpose.all
    @genders = Gender.all
    render :template => "users/settlement"
  end

  def show
  end

  def raty
    @present_product = PresentProduct.all
    @present = Present.find_by(authenticity_token: params[:authenticity])
    @present_product = PresentProduct.where(present_id: @present.id)
    @product = @present.products

  end


  def update
    @present = Present.find_by(authenticity_token: params[:authenticity])
# 所定のPresentProductを呼び出して、PresentProductでコメントを保存するように書き換える。
    @present.update(update_present_params)

  end

  def update_present_params
    params.require(:present).permit(present_products_attributes: [:comment, :id, :evaluation])
  end


end