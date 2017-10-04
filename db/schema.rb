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

ActiveRecord::Schema.define(version: 20170919155232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  # I would add a new migration to add quantity to ingredients, since there an
  # ingredient is always going to be in a certain amount or quantity


  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  # consider adding a new model for Dish so you could add more than guacamole
  # recipes, which is currently hard-coded in your layout

  add_foreign_key "ingredients", "recipes"
end
