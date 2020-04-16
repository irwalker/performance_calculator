class CreateAircraftTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :aircraft_types do |t|
      t.string :code
      t.string :name
    end

    add_index :aircraft_types, :code
  end
end
