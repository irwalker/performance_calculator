class CreatePlanes < ActiveRecord::Migration[6.0]
  def change
    create_table :planes do |t|
      t.string :type
      t.string :registration
      t.integer :basic_empty_weight
      t.float :basic_empty_weight_arm
      t.float :pilot_and_pax_arm
      t.float :rear_pax_arm
      t.integer :fuel_capacity
      t.float :fuel_arm
      t.integer :baggage_capacity
      t.float :baggage_arm
      t.integer :maximum_takeoff_weight
      t.integer :minimum_takeoff_weight
      t.float :fwd_cg_limit
      t.float :aft_cg_limit
      t.float :fwd_weight_change
      t.float :fwd_cg_upper
      t.float :upper_fwd_cg_gradient
      t.float :upper_fwd_cg_constant
      t.float :utility_category_weight_limit
    end

    add_index :planes, :registration
  end
end
