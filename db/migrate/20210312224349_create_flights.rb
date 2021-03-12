class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :origin_id, unique: true
      t.integer :destination_id, array: true, default: []
      t.integer :duration
      t.time :departure_time
      t.date :departure_date, array: true, default: []

      t.timestamps
    end
  end
end
