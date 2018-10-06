class PurposeController < ApplicationController
  def index
  	@purpose = Purpose.all.order(id: :asc)
  end

  def show
  	@purpose = Purpose.find_by(id: params[:id])
  end

  def new
  	@purpose = Purpose.find_by(id: params[:id])
  end

  def edit
  	@purpose = Purpose.find_by(id: params[:id])
  end

  def create
  	@purpose = Purpose.new(
  		purpose: params[:purpose],
   		purpose_number: params[:purpose_number]
  		)

      @purpose.save
  		redirect_to("/purpose")
  end

  def update
  	@purpose = Purpose.find_by(id: params[:id])
  	@purpose.purpose_number = params[:purpose_number]
  	@purpose.purpose = params[:purpose]
  	@purpose.save
  	redirect_to purpose_index
  end

  def destroy
  	@purpose = Purpose.find_by(id: params[:id])
  	@purpose.destroy
  	redirect_to purpose_index
  end


end
