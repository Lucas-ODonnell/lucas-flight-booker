  #create_table "airports", force: :cascade do |t|
  #  t.text "airport_code"
  #  t.text "name"
  #  t.datetime "created_at", precision: 6, null: false
  #  t.datetime "updated_at", precision: 6, null: false
  #end


class Airport < ApplicationRecord
  #has_many :departing_flights,
  #  class_name: "Flight",
  #  foreign_key: "origin_id",
  #  dependent: :destroy
  #has_many :arriving_flights, 
  #  class_name: "Flight",
  #  foreign_key: "destination_id",
  #  dependent: :destroy
end
