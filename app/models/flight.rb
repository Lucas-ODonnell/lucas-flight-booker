  #create_table "flights", force: :cascade do |t|
  #  t.integer "origin_id"
  #  t.integer "destination_id"
  #  t.integer "duration"
  #  t.date "departure_date", default: [], array: true
  #  t.datetime "created_at", precision: 6, null: false
  #  t.datetime "updated_at", precision: 6, null: false
  #  t.integer "departure_time"
  #end


class Flight < ApplicationRecord
  belongs_to :from_airport,
  class_name: "Airport",
  foreign_key: :origin_id,
  inverse_of: :departing_flights

  belongs_to :to_airport,
  class_name: "Airport",
  foreign_key: :destination_id,
  inverse_of: :arriving_flights
end
