class AddAnamneseToHistoriaMedicaPregressa < ActiveRecord::Migration[7.1]
  def change
    add_reference :historia_medica_pregressas, :anamnese, null: false, foreign_key: true
  end
end
