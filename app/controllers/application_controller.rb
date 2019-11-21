class ApplicationController < ActionController::Base
before_action :set_cart_all

  def set_cart_all
      if signed_in?
        # @carts = @carts.get_by_user_id current_user.id　←これだとlile検索になりherokuでエラーを出される。
        @carts = Cart.where(user_id: current_user.id)
      end
  end
end
