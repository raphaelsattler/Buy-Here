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

ActiveRecord::Schema.define(version: 2018_09_23_195807) do

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
<<<<<<< HEAD
    t.bigint "address_type_id"
    t.bigint "person_id"
    t.index ["address_type_id"], name: "index_addresses_on_address_type_id"
    t.index ["person_id"], name: "index_addresses_on_person_id"
=======
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
>>>>>>> 3136b187c6f08fb0cecee1acd520d8d8916d691f
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

<<<<<<< HEAD
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
    t.bigint "perfil_id"
    t.bigint "buy_intention_id"
    t.index ["buy_intention_id"], name: "index_people_on_buy_intention_id"
    t.index ["perfil_id"], name: "index_people_on_perfil_id"
  end

  create_table "perfils", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
=======
  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
>>>>>>> 3136b187c6f08fb0cecee1acd520d8d8916d691f
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.boolean "active", default: true
    t.text "description"
=======
  create_table "quote_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "active", default: true, null: false
>>>>>>> 3136b187c6f08fb0cecee1acd520d8d8916d691f
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "role_rules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "rule_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.index ["role_id"], name: "index_role_rules_on_role_id"
    t.index ["rule_id"], name: "index_role_rules_on_rule_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code"
    t.bigint "permission_id"
    t.boolean "active", default: true
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_rules_on_permission_id"
  end

=======
>>>>>>> 3136b187c6f08fb0cecee1acd520d8d8916d691f
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
<<<<<<< HEAD
    t.bigint "telephone_type_id"
    t.bigint "person_id"
    t.index ["person_id"], name: "index_telephones_on_person_id"
    t.index ["telephone_type_id"], name: "index_telephones_on_telephone_type_id"
  end

  add_foreign_key "addresses", "address_types"
  add_foreign_key "addresses", "people"
  add_foreign_key "contact_emails", "people"
  add_foreign_key "memberships", "groups"
  add_foreign_key "people", "buy_intentions"
  add_foreign_key "people", "perfils"
  add_foreign_key "role_rules", "roles"
  add_foreign_key "role_rules", "rules"
  add_foreign_key "rules", "permissions"
  add_foreign_key "telephones", "people"
  add_foreign_key "telephones", "telephone_types"
=======
    t.index ["telephoneable_type", "telephoneable_id"], name: "index_telephones_on_telephoneable_type_and_telephoneable_id"
  end

  add_foreign_key "groups", "groups", column: "parent_id"
  add_foreign_key "memberships", "groups"
>>>>>>> 3136b187c6f08fb0cecee1acd520d8d8916d691f
end
