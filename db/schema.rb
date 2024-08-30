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

ActiveRecord::Schema[7.2].define(version: 2024_08_30_160344) do
  create_schema "auth"
  create_schema "extensions"
  create_schema "graphql"
  create_schema "graphql_public"
  create_schema "pgbouncer"
  create_schema "pgsodium"
  create_schema "pgsodium_masks"
  create_schema "realtime"
  create_schema "storage"
  create_schema "vault"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_graphql"
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"
  enable_extension "pgjwt"
  enable_extension "pgsodium"
  enable_extension "plpgsql"
  enable_extension "supabase_vault"
  enable_extension "uuid-ossp"

  create_table "aura_extras", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "character_id", null: false
    t.index ["character_id"], name: "index_aura_extras_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "eneru"
    t.integer "intuicao"
    t.string "aura", default: "", null: false
    t.integer "pontos"
    t.integer "nivel_de_despertar"
    t.integer "vida_atual"
    t.integer "eneru_atual"
    t.integer "agilidade"
  end

  add_foreign_key "aura_extras", "characters"
end
