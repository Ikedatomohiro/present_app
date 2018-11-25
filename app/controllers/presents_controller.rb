class PresentsController < ApplicationController


	def create
	  @present = Present.new(
	  	message: params[:message],
	  	)
	  puts @present.message
	  @present.save
	  redirect_to products_user_confirm_path

	end

end