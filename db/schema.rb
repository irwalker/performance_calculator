# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_06_144814) do

  create_table "plane_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.index ["code"], name: "index_plane_types_on_code"
  end

  create_table "planes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type"
    t.string "registration"
    t.integer "basic_empty_weight"
    t.float "basic_empty_weight_arm"
    t.float "pilot_and_pax_arm"
    t.float "rear_pax_arm"
    t.integer "fuel_capacity"
    t.float "fuel_arm"
    t.integer "baggage_capacity"
    t.float "baggage_arm"
    t.integer "maximum_takeoff_weight"
    t.integer "minimum_takeoff_weight"
    t.float "fwd_cg_limit"
    t.float "aft_cg_limit"
    t.float "fwd_weight_change"
    t.float "fwd_cg_upper"
    t.float "upper_fwd_cg_gradient"
    t.float "upper_fwd_cg_constant"
    t.float "utility_category_weight_limit"
    t.index ["registration"], name: "index_planes_on_registration"
  end

end
