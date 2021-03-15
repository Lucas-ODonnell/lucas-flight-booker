class RemoveDepartureTimeFromFlight < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :departure_time, :integer
  end
end
