class SalonController < ApplicationController
  def index
    @salons=Salon.all
  end

  def show
    @salon=Salon.find(params[:id])
  end
end
