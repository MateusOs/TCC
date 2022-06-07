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

ActiveRecord::Schema[7.0].define(version: 2022_06_07_144124) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eventos", force: :cascade do |t|
    t.string "descricao"
    t.date "data"
    t.bigint "projeto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
    t.string "titulo"
    t.index ["projeto_id"], name: "index_eventos_on_projeto_id"
  end

  create_table "projetos", force: :cascade do |t|
    t.string "nome"
    t.string "numero"
    t.date "data"
    t.date "dataInicio"
    t.date "dataFim"
    t.string "status"
    t.string "area"
    t.string "departamento"
    t.integer "avaliacaoComite"
    t.integer "avaliacaoDepex"
    t.integer "avaliacaoGeral"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuario_id", null: false
    t.string "objetivo"
    t.string "areaTematica"
    t.index ["usuario_id"], name: "index_projetos_on_usuario_id"
  end

  create_table "usuario_projetos", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "projeto_id", null: false
    t.string "tipoUsuario"
    t.string "cargaHoraria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projeto_id"], name: "index_usuario_projetos_on_projeto_id"
    t.index ["usuario_id"], name: "index_usuario_projetos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome", null: false
    t.string "login", null: false
    t.string "password_digest", null: false
    t.string "email", null: false
    t.string "tipoUsuario", null: false
    t.string "fone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "departamento"
    t.string "chefeDepartamento"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["login"], name: "index_usuarios_on_login", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "eventos", "projetos"
  add_foreign_key "projetos", "usuarios"
  add_foreign_key "usuario_projetos", "projetos"
  add_foreign_key "usuario_projetos", "usuarios"
end
