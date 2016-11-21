class CreateFlightItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :flight_itineraries  do |t|
      t.integer :plane_id
      t.string :flight_id
      t.datetime :depurate_time

      t.timestamps
    end
  end
end
