  #create_table "flights", force: :cascade do |t|
  #  t.integer "origin_id"
  #  t.integer "destination_id", default: [], array: true
  #  t.integer "duration"
  #  t.date "departure_date", default: [], array: true
  #  t.datetime "created_at", precision: 6, null: false
  #  t.datetime "updated_at", precision: 6, null: false
  #  t.integer "departure_time"
  #end


class Flight < ApplicationRecord
  #belongs_to :origin,
  #class_name: "Airport"

  #belongs_to :destination,
  #class_name: "Airport"
end
