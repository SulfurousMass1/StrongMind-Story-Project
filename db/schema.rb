# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_17_050459) do
  create_table "pizza_toppings", force: :cascade do |t|
    t.integer "pizza_id", null: false
    t.integer "topping_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_id"], name: "index_pizza_toppings_on_pizza_id"
    t.index ["topping_id"], name: "index_pizza_toppings_on_topping_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "pizza_name"
    t.string "crust"
    t.string "toppings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizzas_toppings", id: false, force: :cascade do |t|
    t.integer "pizza_id", null: false
    t.integer "topping_id", null: false
    t.index ["pizza_id", "topping_id"], name: "index_pizzas_toppings_on_pizza_id_and_topping_id"
    t.index ["topping_id", "pizza_id"], name: "index_pizzas_toppings_on_topping_id_and_pizza_id"
  end

  create_table "toppings", force: :cascade do |t|
    t.string "topping_name"
    t.string "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "amount"
  end

  add_foreign_key "pizza_toppings", "pizzas"
  add_foreign_key "pizza_toppings", "toppings"
end
