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

ActiveRecord::Schema[7.1].define(version: 2023_12_21_234844) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "anamneses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "paciente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_anamneses_on_paciente_id"
    t.index ["user_id"], name: "index_anamneses_on_user_id"
  end

  create_table "apartamentos", force: :cascade do |t|
    t.integer "numeroApartamento"
    t.string "bloco"
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casa_numeros", force: :cascade do |t|
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casas", force: :cascade do |t|
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cnpjs", force: :cascade do |t|
    t.integer "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "documento_id", null: false
    t.index ["documento_id"], name: "index_cnpjs_on_documento_id"
  end

  create_table "consulta", force: :cascade do |t|
    t.bigint "paciente_id", null: false
    t.bigint "user_id", null: false
    t.bigint "data_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_id"], name: "index_consulta_on_data_id"
    t.index ["paciente_id"], name: "index_consulta_on_paciente_id"
    t.index ["user_id"], name: "index_consulta_on_user_id"
  end

  create_table "cpfs", force: :cascade do |t|
    t.integer "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "documento_id", null: false
    t.index ["documento_id"], name: "index_cpfs_on_documento_id"
  end

  create_table "data", force: :cascade do |t|
    t.datetime "data_completa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.bigint "pessoa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_documentos_on_pessoa_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pessoa_id", null: false
    t.index ["pessoa_id"], name: "index_emails_on_pessoa_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "street"
    t.integer "number"
    t.string "complement"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "neighborhood"
    t.bigint "pessoa_id", null: false
    t.bigint "tipo_logradouro_id", null: false
    t.index ["pessoa_id"], name: "index_enderecos_on_pessoa_id"
    t.index ["tipo_logradouro_id"], name: "index_enderecos_on_tipo_logradouro_id"
  end

  create_table "estado_civils", force: :cascade do |t|
    t.string "estadoCivil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pessoa_id", null: false
    t.index ["pessoa_id"], name: "index_estado_civils_on_pessoa_id"
  end

  create_table "historia_doenca_atuals", force: :cascade do |t|
    t.datetime "inicioSintomas"
    t.string "descricaoSintomasAtuais"
    t.string "fatoresMelhoraramOuPioraram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_historia_doenca_atuals_on_anamnese_id"
  end

  create_table "historia_familiars", force: :cascade do |t|
    t.string "doencasHereditarias"
    t.string "historicoDoencasFamilia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_historia_familiars_on_anamnese_id"
  end

  create_table "historia_medica_pregressas", force: :cascade do |t|
    t.string "doencasAnteriores"
    t.string "hospitalizacoesCirurgiasprevias"
    t.string "traumas"
    t.string "alergias"
    t.string "usoMedicamentos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_historia_medica_pregressas_on_anamnese_id"
  end

  create_table "historia_psicologica_psiquiatricas", force: :cascade do |t|
    t.string "niveisEstresse"
    t.string "problemasSaudeMental"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_historia_psicologica_psiquiatricas_on_anamnese_id"
  end

  create_table "historia_sexual_reprodutivas", force: :cascade do |t|
    t.string "vidaSexualAfetiva"
    t.string "metodosContraceptivos"
    t.string "dst"
    t.string "menstruacaoGravidezMenopausa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_historia_sexual_reprodutivas_on_anamnese_id"
  end

  create_table "nome_completos", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pessoa_id", null: false
    t.index ["pessoa_id"], name: "index_nome_completos_on_pessoa_id"
  end

  create_table "notificacaos", force: :cascade do |t|
    t.string "aviso1hAntes"
    t.string "aviso23hAntes"
    t.string "avisoHorarioEspecifico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "consulta_id", null: false
    t.index ["consulta_id"], name: "index_notificacaos_on_consulta_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.bigint "pessoa_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_pacientes_on_pessoa_id"
    t.index ["user_id"], name: "index_pacientes_on_user_id"
  end

  create_table "pagamentos", force: :cascade do |t|
    t.string "formaPagamento"
    t.string "statusPagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "tipoPessoa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profissaos", force: :cascade do |t|
    t.string "profissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pessoa_id", null: false
    t.index ["pessoa_id"], name: "index_profissaos_on_pessoa_id"
  end

  create_table "queixa_principals", force: :cascade do |t|
    t.string "motivoConsulta"
    t.string "descricaoSintomas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_queixa_principals_on_anamnese_id"
  end

  create_table "revisao_habitos", force: :cascade do |t|
    t.string "dietaNutricao"
    t.string "rotinaSono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_revisao_habitos_on_anamnese_id"
  end

  create_table "revisao_sistemas", force: :cascade do |t|
    t.string "perguntasTodosSistemasCorpo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "anamnese_id", null: false
    t.index ["anamnese_id"], name: "index_revisao_sistemas_on_anamnese_id"
  end

  create_table "telefones", force: :cascade do |t|
    t.integer "ddd"
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pessoa_id", null: false
    t.index ["pessoa_id"], name: "index_telefones_on_pessoa_id"
  end

  create_table "tipo_logradouros", force: :cascade do |t|
    t.bigint "casa_id", null: false
    t.bigint "apartamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartamento_id"], name: "index_tipo_logradouros_on_apartamento_id"
    t.index ["casa_id"], name: "index_tipo_logradouros_on_casa_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pessoa_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["pessoa_id"], name: "index_users_on_pessoa_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "anamneses", "pacientes"
  add_foreign_key "anamneses", "users"
  add_foreign_key "cnpjs", "documentos"
  add_foreign_key "consulta", "data", column: "data_id"
  add_foreign_key "consulta", "pacientes"
  add_foreign_key "consulta", "users"
  add_foreign_key "cpfs", "documentos"
  add_foreign_key "documentos", "pessoas"
  add_foreign_key "emails", "pessoas"
  add_foreign_key "enderecos", "pessoas"
  add_foreign_key "enderecos", "tipo_logradouros"
  add_foreign_key "estado_civils", "pessoas"
  add_foreign_key "historia_doenca_atuals", "anamneses"
  add_foreign_key "historia_familiars", "anamneses"
  add_foreign_key "historia_medica_pregressas", "anamneses"
  add_foreign_key "historia_psicologica_psiquiatricas", "anamneses"
  add_foreign_key "historia_sexual_reprodutivas", "anamneses"
  add_foreign_key "nome_completos", "pessoas"
  add_foreign_key "notificacaos", "consulta", column: "consulta_id"
  add_foreign_key "pacientes", "pessoas"
  add_foreign_key "pacientes", "users"
  add_foreign_key "profissaos", "pessoas"
  add_foreign_key "queixa_principals", "anamneses"
  add_foreign_key "revisao_habitos", "anamneses"
  add_foreign_key "revisao_sistemas", "anamneses"
  add_foreign_key "telefones", "pessoas"
  add_foreign_key "tipo_logradouros", "apartamentos"
  add_foreign_key "tipo_logradouros", "casas"
  add_foreign_key "users", "pessoas"
end
