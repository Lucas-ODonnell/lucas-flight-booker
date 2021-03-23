class BookingsController < ApplicationController

  def index
    @bookings = Booking.all.order("created_at DESC")
  end

  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight])
    #get number of passengers and build out however many numbers of instances
    @number_of_passengers = params[:pass_count].to_i
    @number_of_passengers.times { @booking.passengers.build }
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
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
