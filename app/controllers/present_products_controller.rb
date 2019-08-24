class PresentProductsController < ApplicationController
  def index
  end



  def show
    @present_product = PresentProduct.find_by(authenticity_token: params[:authenticity])
  end


  def create

  end

  def update
    
  end

end
