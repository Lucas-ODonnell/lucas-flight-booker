class RemoveDepartureDateFromFlight < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :departure_date, :date
  end
end
