class SalonController < ApplicationController
  def index
    @salons=Salon.all
    @user=current_user.id
  end

  def show
    @salon=Salon.find(params[:id])
  end
end
