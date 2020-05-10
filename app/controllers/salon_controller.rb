class SalonController < ApplicationController
  def index
    @salons=Salon.all
  end
end
