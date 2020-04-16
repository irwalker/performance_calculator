class AircraftController < ApplicationController
  before_action :find_plane, only: [:show, :edit, :update, :destroy]

  def index
    @aircraft = Aircraft.all
  end

  def show; end

  def new
    @aircraft = Aircraft.new
  end

  def create
    @aircraft = Aircraft.new(aircraft_params)
  end

  def edit; end

  def update
  end

  def destroy
  end

  private

  def find_plane
    @aircraft = Aircraft.find(params[:id])
  end

  def aircraft_params
    params.require(:aircraft).permit(
      :type,
      :registration,
      :basic_empty_weight,
      :basic_empty_weight_arm,
      :pilot_and_pax_arm,
      :rear_pax_arm,
      :fuel_capacity,
      :fuel_arm,
      :baggage_capacity,
      :baggage_arm,
      :maximum_takeoff_weight,
      :minimum_takeoff_weight,
      :fwd_cg_limit,
      :aft_cg_limit,
      :fwd_weight_change,
      :fwd_cg_upper,
      :upper_fwd_cg_gradient,
      :upper_fwd_cg_constant,
      :utility_category_weight_limit
    )
  end
end
