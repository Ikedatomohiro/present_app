class HomeController < ApplicationController
  def index
    @purposes = Purpose.all
        @carts = Cart.all.order(created_at: :desc)
      if signed_in?
        @carts = @carts.get_by_user_id current_user.id
      end

  end

  def registration
    
  end


end
