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

ActiveRecord::Schema.define(:version => 20110517230743) do

  create_table "antecedentes", :force => true do |t|
    t.string   "descripcion"
    t.string   "diagnostico_medico"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "ocupacion"
    t.date     "fecha_nacimiento"
    t.integer  "telefono"
    t.string   "movil"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnosticos", :force => true do |t|
    t.string   "diagnosticoMedico"
    t.string   "diagnosticoFisioterapia"
    t.string   "antecedentesClinicos"
    t.string   "motivoConsulta"
    t.string   "evaluacion"
    t.string   "fisioterapeuta"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "paciente_id"
  end

  create_table "informacioncontactos", :force => true do |t|
    t.integer  "movil"
    t.integer  "telefonoFijo"
    t.string   "email"
    t.string   "direccion"
    t.string   "ciudad"
    t.integer  "cp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "paciente_id"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "nombre"
    t.date     "fechaNacimiento"
    t.string   "ocupacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tipoPaciente"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
