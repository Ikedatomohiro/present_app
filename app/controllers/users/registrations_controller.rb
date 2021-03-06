# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
    @genders = Gender.all
     super

   end

  # POST /resource
  def create
    @genders = Gender.all
    super  # superのところでuserが生成する
    n = User.last.id
    @user = User.find_by(id: n)
    @user.update(
      name:      params[:user][:name],
      birthday:  params[:user][:birthday],
      gender_id: params[:user][:gender_id]
      )
#    if n != User.last.id
# ユーザー登録されたときだけshopが作られる
#      @shop = Shop.new(
#        name: params[:shop][:name],
#       web_site: params[:shop][:web_site],
#        mail: params[:shop][:mail]
#        )
#      @shop.save!

#      @shop_management = ShopManagement.new(
#        shop_id: Shop.last.id,
#        user_id: User.last.id
#        )
#      @shop_management.save!
#    end

  end

  # GET /resource/edit
   def edit
    @genders = Gender.all
     super
   end

  # PUT /resource
   def update
    @genders = Gender.all
     super    # password、emailはすでに更新されている
   end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

end