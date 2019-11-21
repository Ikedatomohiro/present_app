class HomeController < ApplicationController
  def index
    @purposes = Purpose.all
    @products = Product.last(5)

  end

  def registration
    
  end


end
