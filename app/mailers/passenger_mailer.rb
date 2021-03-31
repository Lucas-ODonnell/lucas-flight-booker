class PassengerMailer < ApplicationMailer
  def thank_you_email(passenger)
    @passenger = passenger
    @url = 'http://localhost:3000'
    mail(to: @passenger.email, subject: '#{@passenger.name}, Thank you for booking your flight to #{@passenger.booking.flight.to_airport.name}')
  end
end
