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

ActiveRecord::Schema.define(version: 2020_04_16_090508) do

  create_table "aircraft", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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
    t.index ["registration"], name: "index_aircraft_on_registration"
  end

  create_table "aircraft_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.index ["code"], name: "index_aircraft_types_on_code"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

end
