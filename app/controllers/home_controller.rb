class HomeController < ApplicationController
  def index
    @purposes = Purpose.all
  end

  def registration
    
  end


end
