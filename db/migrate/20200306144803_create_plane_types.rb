class CreatePlaneTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :plane_types do |t|
      t.string :code
      t.string :name
    end

    add_index :plane_types, :code
  end
end
