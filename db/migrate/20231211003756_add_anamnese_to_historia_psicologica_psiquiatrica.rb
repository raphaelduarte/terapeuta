class AddAnamneseToHistoriaPsicologicaPsiquiatrica < ActiveRecord::Migration[7.1]
  def change
    add_reference :historia_psicologica_psiquiatricas, :anamnese, null: false, foreign_key: true
  end
end
