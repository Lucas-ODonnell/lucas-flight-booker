# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = 
 [["Birmingham International Airport", "BHM"],
 ["Montgomery", "MGM"],
 ["Anchorage International Airport", "ANC"],
 ["Fairbanks International Airport", "FAI"],
 ["Juneau International Airport", "JNU"],
 ["Phoenix, Phoenix Sky Harbor International Airport", "PHX"],
 ["Little Rock National Airport", "LIT"],
 ["Los Angeles International Airport", "LAX"],
 ["San Francisco International Airport", "SFO"],
 ["Denver International Airport", "DEN"],
 ["Washington, Dulles International Airport", "IAD"],
 ["Miami International Airport", "MIA"],
 ["Orlando", "MCO"],
 ["Atlanta Hartsfield International Airport", "ATL"],
 ["Honolulu International Airport", "HNL"],
 ["Boise", "BOI"],
 ["Chicago, O'Hare International Airport Airport", "ORD"],
 ["Fort Wayne", "FWA"],
 ["Des Moines", "DSM"],
 ["Louisville", "SDF"],
 ["New Orleans International Airport", "MSY"],
 ["Augusta", "AUG"],
 ["Portland", "PWM"],
 ["Baltimore", "BWI"],
 ["Boston, Logan International Airport", "BOS"],
 ["Detroit", "DET"],
 ["Grand Rapids", "GRR"],
 ["Minneapolis/St.Paul International Airport", "MSP"],
 ["Jackson", "JAN"],
 ["Kansas City", "MCI"],
 ["St Louis, Lambert International Airport", "STL"],
 ["Billings", "BIL"],
 ["Lincoln", "LNK"],
 ["Las Vegas, Las Vegas McCarran International Airport", "LAS"],
 ["Reno-Tahoe International Airport", "RNO"],
 ["Newark International Airport", "EWR"],
 ["Albuquerque International Airport", "ABQ"],
 ["New York, John F Kennedy International Airport", "JFK"],
 ["Greensboro", "GSO"],
 ["Raleigh", "RDU"],
 ["Fargo", "FAR"],
 ["Cincinnati", "CVG"],
 ["Cleveland", "CLE"],
 ["Oklahoma City", "OKC"],
 ["Tulsa", "TUL"],
 ["Portland International Airport", "PDX"],
 ["Philadelphia", "PHL"],
 ["Greenville", "GSP"],
 ["Myrtle Beach", "MYR"],
 ["Sioux Falls", "FSD"],
 ["Memphis", "MEM"],
 ["Nashville", "BNA"],
 ["Corpus Christi", "CRP"],
 ["Dallas/Fort Worth International Airport", "DFW"],
 ["Houston, William B Hobby Airport", "HOU"],
 ["Salt Lake City", "SLC"],
 ["Norfolk", "ORF"],
 ["Richmond", "RIC"],
 ["Seattle, Tacoma International Airport", "SEA"],
 ["Green Bay", "GRB"],
 ["Cheyenne", "CYS"]]

airports.each do |airport|
  Airport.create(name: airport[0], airport_code: airport[1])
end

airport_numbers = (1..61)
times = (1..24)
length = (1..8)
dates = (Date.current...Date.current+1.month).to_a 

airport_numbers.each do |number|
  Flight.create(origin_id: number, departure_time: rand(times), duration: rand(length).to_s)
end


Flight.all.each do |flight|
  airport_numbers.each do |num|
    if num == flight.origin_id
      next
    else
      flight.destination_id << num
    end
  end
  flight.save
end

Flight.all.each do |flight|
  dates.each { |day| flight.departure_date << day }
  flight.save
end

