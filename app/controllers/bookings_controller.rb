class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight])
    #get number of passengers and build out however many numbers of instances
    @passengers = params[:pass_count].to_i
    @passengers.times { @booking.passengers.build }

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
  end
end
