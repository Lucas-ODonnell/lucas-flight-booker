class AddDepartureTimeToFlight < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :departure_time, :text
  end
end
