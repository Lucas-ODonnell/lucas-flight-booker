class CreateAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :airports do |t|
      t.text :airport_code, limit: 3, unique: true
      t.text :name, unique: true

      t.timestamps
    end
  end
end
