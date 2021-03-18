class FlightsController < ApplicationController
  
  def index
    flash.now[:alert] = "Enter a date" unless params.has_key?(:departure_date) 
    if params[:origin_id].blank?
      flash.now[:alert] = "Please choose an airport"
    elsif params[:destination_id].blank?
      flash.now[:alert] = "Please choose a destination"
    elsif params[:origin_id] == params[:destination_id]
      flash.now[:alert] = "you can't flight to the same airport you are already at"
    elsif params[:pass_count].blank?
      flash.now[:alert] = "Select how many passengers are in your party"
    else
      @available_flights = Flight.where(origin_id: params[:origin_id], destination_id: params[:destination_id])
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:origin_id,
                                   :destination_id,
                                   :duration,
                                   :departure_time)
  end
end
