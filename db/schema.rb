# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150307193411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "retirement_projections", force: :cascade do |t|
    t.integer  "year_of_birth"
    t.integer  "current_savings"
    t.integer  "current_annual_income"
    t.decimal  "expected_percentage_increase_in_income_yearly",      precision: 4, scale: 2
    t.integer  "current_annual_expenditures"
    t.decimal  "expected_percentage_increase_in_expenditures",       precision: 4, scale: 2
    t.integer  "planned_retirement_age"
    t.integer  "age_at_death"
    t.integer  "expected_income_once_retired"
    t.integer  "expected_present_day_expenses_when_retired"
    t.decimal  "expected_inflation_rate",                            precision: 4, scale: 2
    t.decimal  "expected_average_rate_of_return_on_savings",         precision: 4, scale: 2
    t.decimal  "expected_average_rate_of_return_on_savings_retired", precision: 4, scale: 2
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
  end

end
