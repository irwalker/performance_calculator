class Aircraft < ApplicationRecord
  validates :type, presence: true
  validates :registration, presence: true, uniqueness: true
  validates :basic_empty_weight , presence: true, numericality: true
  validates :basic_empty_weight_arm, numericality: true
  validates :pilot_and_pax_arm, numericality: true
  validates :rear_pax_arm, numericality: true
  validates :fuel_capacity, numericality: true
  validates :fuel_arm, numericality: true
  validates :baggage_capacity, numericality: true
  validates :baggage_arm, numericality: true
  validates :maximum_takeoff_weight, numericality: true
  validates :minimum_takeoff_weight, numericality: true
  validates :fwd_cg_limit, numericality: true
  validates :aft_cg_limit, numericality: true
  validates :fwd_weight_change, numericality: true
  validates :fwd_cg_upper, numericality: true
  validates :upper_fwd_cg_gradient, numericality: true
  validates :upper_fwd_cg_constant, numericality: true
  validates :utility_category_weight_limit, numericality: true
end
