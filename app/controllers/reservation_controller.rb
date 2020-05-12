class ReservationController < ApplicationController
  def new
    if user_signed_in? 
      @salon=Salon.find(params[:salon_id])
      @reservation=Reservation.new
    else
      redirect_to new_user_session_path
      
    end
  end

  def create
    @reservation=Reservation.new(reservation_params)

    if @reservation.save
      redirect_to root_path
    else
      render :new 
    end
  end

  private
  def reservation_params
      params.require(:reservation).permit(:name,:gender,:cut,:pama,:color,:month,:hour,:day,:minute).merge(user_id: current_user.id,salon_id: params[:salon_id])
  end
end
