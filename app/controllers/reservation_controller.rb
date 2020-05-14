class ReservationController < ApplicationController
  def new
    @reservationed=Reservation.where(user_id: current_user.id).count
    if @reservationed==1
      redirect_to user_path(current_user)
    else
      @salon=Salon.find(params[:salon_id])
      @reservation=Reservation.new

    end
  end

  def create
    @reservation=Reservation.new(reservation_params)

    if @reservation.save
      redirect_to root_path,notice: '予約完了しました'
    else
      render :new
    end
  end

  def destroy
    @reservation=Reservation.find_by(user_id: current_user.id)
    @reservation.destroy
    redirect_to root_path,notice: '予約をキャンセルしました'
  end

  private
  def reservation_params
      params.require(:reservation).permit(:name,:gender,:cut,:pama,:color,:month,:hour,:day,:minute).merge(user_id: current_user.id,salon_id: params[:salon_id])
  end
end
