class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :location_id
      t.timestamps
    end

    add_index :tours, :location_id
  end
end
