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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120327053433) do

  create_table "coments", :force => true do |t|
    t.string   "texto"
    t.integer  "calificacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventodepos", :force => true do |t|
    t.string   "nombre"
    t.decimal  "premio"
    t.integer  "cantidad"
    t.datetime "plazoinsc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "distrito"
    t.string   "direcc_google"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "tipo"
    t.string   "nombre"
    t.string   "apepat"
    t.string   "apemat"
    t.string   "sexo"
    t.string   "tipdoc"
    t.string   "numdoc"
    t.string   "correo"
    t.string   "password"
    t.date     "fecnac"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicidads", :force => true do |t|
    t.string   "titulo"
    t.string   "contenido"
    t.date     "fecinicio"
    t.date     "fecfin"
    t.decimal  "tarifa"
    t.integer  "numclics"
    t.string   "ubicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", :force => true do |t|
    t.string   "tipo"
    t.string   "descripcion"
    t.decimal  "tarifa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
