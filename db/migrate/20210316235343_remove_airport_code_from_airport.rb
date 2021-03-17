class RemoveAirportCodeFromAirport < ActiveRecord::Migration[6.0]
  def change
    remove_column :airports, :airport_code, :text
  end
end
