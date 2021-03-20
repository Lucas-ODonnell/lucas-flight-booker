class FlightsController < ApplicationController
  def index
    flash[:alert] = "Enter a date" unless params.has_key?(:departure_date) 
    if params[:origin_id].blank?
      flash[:alert] = "Please choose an airport"
    elsif params[:destination_id].blank?
      flash[:alert] = "Please choose a destination"
    elsif params[:origin_id] == params[:destination_id]
      flash[:alert] = "you can't flight to the same airport you are already at"
    elsif params[:pass_count].blank?
      flash[:alert] = "Select how many passengers are in your party"
    else
      @available_flights = Flight.where(origin_id: params[:origin_id], destination_id: params[:destination_id])
      @selected_date = Date.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i) 
      flash[:alert] = "No Flights on this day" unless Trip.all.any? { |day| day.departure_date = @selected_date }
      @available_flights.map do |flight| 
        flight.departure_id = Trip.find_by(departure_date: @selected_date).id 
        flight.save
      end
    end
  end

  #private

  #def flight_params
  #  params.require(:flight).permit(:origin_id,
  #                                 :destination_id,
  #                                 :duration,
  #                                 :departure_time,
  #                                 )
  #end
end
