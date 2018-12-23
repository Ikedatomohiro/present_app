class PresentsController < ApplicationController
	def index
		render :template => "users/confirm"
	end

	def create
	  @present = Present.new(
	  	user_id: current_user.id,
	  	present_opponent_id: params[:present_opponent_id],
	  	purpose_number: params[:purpose_number],
	  	present_date: params[:present_date],
	  	parchase_date: params[:parchase_date],
	  	budget: params[:budget],
	  	message: params[:present][:message],
	  	)
	  puts @present.message
	  puts @present.purpose_number
	      @products = Product.all
		  @carts = Cart.all
		  @genders = Gender.all

      if current_user.id.present?
        @carts = @carts.get_by_user_id current_user.id
      end
	  render :template => "users/confirm"

	end

	def back
		@present = Present.new(
	  	message: params[:present][:message],
	  	)
		@products = Product.all
		@carts = Cart.all
		@purposes = Purpose.all
		render :template => "users/settlement"
	end
end