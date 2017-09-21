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

ActiveRecord::Schema.define(version: 20170921095132) do

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.boolean "recipe"
    t.integer "recipe_id"
    t.boolean "weapon"
    t.integer "weapon_id"
    t.boolean "raw_material"
    t.boolean "processed_material"
    t.boolean "drop_item"
    t.boolean "armor"
    t.string "drop_possibility"
    t.boolean "user_defined"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_type"
    t.boolean "food"
    t.integer "food_id"
    t.boolean "medicine"
    t.integer "medicine_id"
    t.integer "raw_material_id"
    t.integer "processed_material_id"
    t.integer "armor_id"
    t.boolean "furniture"
    t.integer "furniture_id"
    t.boolean "tool"
    t.integer "tool_id"
  end

end
