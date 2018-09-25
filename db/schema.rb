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

ActiveRecord::Schema.define(version: 2018_09_23_190058) do

  create_table "address_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.string "street"
    t.integer "number"
    t.string "complement"
    t.string "zip_code"
    t.string "district"
    t.string "city"
    t.string "state"
    t.string "country"
    t.boolean "active", default: true
    t.bigint "person_id"
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
    t.index ["person_id"], name: "index_addresses_on_person_id"
  end

  create_table "buy_intentions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_emails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.boolean "active", default: true
    t.bigint "person_id"
    t.index ["person_id"], name: "index_contact_emails_on_person_id"
  end

  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "parent_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "fk_rails_be49f097d1"
  end

  create_table "memberships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "group_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_memberships_on_group_id"
  end

  create_table "people", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "social_name"
    t.string "email"
    t.string "cpf", limit: 14
    t.string "cnpj", limit: 18
    t.boolean "active", default: true
    t.string "rg"
    t.string "expediter_rg"
    t.string "uf_expediter_rg", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.bigint "buy_intention_id"
    t.index ["buy_intention_id"], name: "index_people_on_buy_intention_id"
    t.index ["profile_id"], name: "index_people_on_profile_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quote_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telephone_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telephones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "telephoneable_type"
    t.bigint "telephoneable_id"
    t.string "ddi_number", limit: 3
    t.string "ddd_number", limit: 2
    t.string "telephone_number", limit: 10
    t.boolean "active", default: true
    t.bigint "person_id"
    t.index ["person_id"], name: "index_telephones_on_person_id"
    t.index ["telephoneable_type", "telephoneable_id"], name: "index_telephones_on_telephoneable_type_and_telephoneable_id"
  end

  add_foreign_key "addresses", "people"
  add_foreign_key "contact_emails", "people"
  add_foreign_key "groups", "groups", column: "parent_id"
  add_foreign_key "memberships", "groups"
  add_foreign_key "people", "buy_intentions"
  add_foreign_key "people", "profiles"
  add_foreign_key "telephones", "people"
end
