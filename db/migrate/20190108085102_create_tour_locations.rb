class CreateTourLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_locations do |t|
      t.references :tour, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps
    end

    add_index :tour_locations, [:tour_id, :location_id], unique: true
  end
end
