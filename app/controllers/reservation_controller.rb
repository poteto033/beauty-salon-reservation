class ReservationController < ApplicationController
  def new
    if user_signed_in?     
    else
      redirect_to new_user_session_path
      
    end
  end

  def create
  end
end
