class CreateHistoriaPsicologicaPsiquiatricas < ActiveRecord::Migration[7.1]
  def change
    create_table :historia_psicologica_psiquiatricas do |t|
      t.string :niveisEstresse
      t.string :problemasSaudeMental

      t.timestamps
    end
  end
end
