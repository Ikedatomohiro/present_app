class ApplicationController < ActionController::Base
before_action :set_cart_all

  def set_cart_all
    @carts = Cart.all
      if signed_in?
        @carts = @carts.get_by_user_id current_user.id
      end
    # @cartCount = @carts.count
    @cartCount = @carts.count
  end
end
