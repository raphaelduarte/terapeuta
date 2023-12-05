class CreateHistoriaMedicaPregressas < ActiveRecord::Migration[7.1]
  def change
    create_table :historia_medica_pregressas do |t|
      t.string :doencasAnteriores
      t.string :hospitalizacoesCirurgiasprevias
      t.string :traumas
      t.string :alergias
      t.string :usoMedicamentos

      t.timestamps
    end
  end
end
