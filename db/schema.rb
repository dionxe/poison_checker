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

ActiveRecord::Schema.define(version: 2020_02_08_110216) do

  create_table "mushrooms", force: :cascade do |t|
    t.boolean "poisonous"
    t.string "cap_shape"
    t.string "cap_surface"
    t.string "cap_color"
    t.string "bruises"
    t.string "odor"
    t.string "gill_attachment"
    t.string "gill_spacing"
    t.string "gill_size"
    t.string "gill_color"
    t.string "stalk_shape"
    t.string "stalk_root"
    t.string "stalk_surface_above_ring"
    t.string "stalk_surface_below_ring"
    t.string "stalk_color_above_ring"
    t.string "stalk_color_below_ring"
    t.string "veil_type"
    t.string "veil_color"
    t.string "ring_number"
    t.string "ring_type"
    t.string "spore_print_color"
    t.string "population"
    t.string "habitat"
  end

end
