class UsersController < ApplicationController
  def show
    @reservation=Reservation.find_by(user_id: current_user.id)
  end
end
