class Trip < ApplicationRecord
  has_many :scheduled_flights,
    class_name: "Flight",
    foreign_key: :departure_id,
    dependent: :destroy, 
    inverse_of: :travel_date
end
