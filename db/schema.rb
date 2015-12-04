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

ActiveRecord::Schema.define(version: 20151203045233) do

  create_table "categories", force: :cascade do |t|
    t.text     "nombre",      limit: 65535
    t.text     "descripcion", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "provincia",  limit: 255
    t.string   "distrito",   limit: 255
    t.text     "direccion",  limit: 65535
    t.string   "telefono",   limit: 255
    t.text     "ruc",        limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "descuento_clientes", force: :cascade do |t|
    t.decimal  "descuento",               precision: 10
    t.string   "descripcion", limit: 255
    t.integer  "cliente_id",  limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "descuento_clientes", ["cliente_id"], name: "index_descuento_clientes_on_cliente_id", using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.integer  "precencia_id", limit: 4
    t.date     "fecha"
    t.decimal  "total",                  precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "pedidos", ["precencia_id"], name: "index_pedidos_on_precencia_id", using: :btree

  create_table "personas", force: :cascade do |t|
    t.text     "nombres",    limit: 65535
    t.text     "cargo",      limit: 65535
    t.integer  "cliente_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "personas", ["cliente_id"], name: "index_personas_on_cliente_id", using: :btree

  create_table "precencia", force: :cascade do |t|
    t.text     "nombre",           limit: 65535
    t.time     "hora"
    t.text     "observacion",      limit: 65535
    t.integer  "cliente_id",       limit: 4
    t.integer  "persona_id",       limit: 4
    t.text     "nombre_precencia", limit: 65535
    t.integer  "usuario_id",       limit: 4
    t.integer  "producto_id",      limit: 4
    t.integer  "cantidad",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "precencia", ["cliente_id"], name: "index_precencia_on_cliente_id", using: :btree
  add_index "precencia", ["persona_id"], name: "index_precencia_on_persona_id", using: :btree
  add_index "precencia", ["producto_id"], name: "index_precencia_on_producto_id", using: :btree
  add_index "precencia", ["usuario_id"], name: "index_precencia_on_usuario_id", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string   "producto",    limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "productos", ["category_id"], name: "index_productos_on_category_id", using: :btree

  create_table "ruta", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "cliente_id", limit: 4
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "ruta", ["cliente_id"], name: "index_ruta_on_cliente_id", using: :btree
  add_index "ruta", ["usuario_id"], name: "index_ruta_on_usuario_id", using: :btree

  create_table "tipos", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "usuario",    limit: 255
    t.string   "password",   limit: 255
    t.integer  "tipo_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "usuarios", ["tipo_id"], name: "index_usuarios_on_tipo_id", using: :btree

end
