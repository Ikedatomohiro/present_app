class HomeController < ApplicationController
  def index
  end

  def product
  	@products = Product.all
  end

	def registration
	
	end


end
