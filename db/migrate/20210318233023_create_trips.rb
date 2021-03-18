class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.date :departure_date

      t.timestamps
    end
  end
end
