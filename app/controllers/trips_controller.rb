class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(flight_params)
    if @trip.save
      redirect_to root_path 
    else
      render "new"
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  private 
  def flight_params
    params.require(:flight).permit(:departure_date)
  end
end
