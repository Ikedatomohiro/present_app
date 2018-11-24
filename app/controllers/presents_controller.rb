class PresentsController < ApplicationController


	def create
	  @present = Present.new(
	  	message: params[:present][:message],
	  	present_opponent: params[:present][:present_opponent],
	  	)
	  puts @present.present_opponent
	  puts @present.message
	  
	  redirect_to products_user_confirm_path

	end

end