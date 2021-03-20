class RemoveDepartureIdFromFlight < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :departure_id, :integer
  end
end
