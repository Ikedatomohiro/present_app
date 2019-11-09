class HomeController < ApplicationController
  def index
    @purposes = Purpose.all
        @carts = Cart.all.order(created_at: :desc)

    @products = Product.last(5)

  end

  def registration
    
  end


end
