class CreateFlightsPlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :flights_planes  do |t|
      t.integer :flight_id
      t.datetime :departure_time

      t.timestamps
    end
  end
end
