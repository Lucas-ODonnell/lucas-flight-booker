# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([
  { name: 'San Francisco International Airport(SFO)'},
  { name: 'John F. Kennedy International Airport(JFK)'}
])


flights = Flight.create([
  { origin_id: airports.first.id, destination_id: airports.last.id, duration: 320, departure_time: '7:00'},
  { origin_id: airports.first.id, destination_id: airports.last.id, duration: 320, departure_time: '9:00'},
  { origin_id: airports.first.id, destination_id: airports.last.id, duration: 320, departure_time: '15:00'},
  { origin_id: airports.last.id, destination_id: airports.first.id, duration: 380, departure_time: '8:00'},
  { origin_id: airports.last.id, destination_id: airports.first.id, duration: 380, departure_time: '10:00'},
  { origin_id: airports.last.id, destination_id: airports.first.id, duration: 380, departure_time: '13:00'}
])

dates = (Date.current..Date.current+1.month).to_a

Flight.all.each do |flight|
  dates.each { |day| flight.departure_date << day }
  flight.save
end
