class AddAnamneseToHistoriaFamiliar < ActiveRecord::Migration[7.1]
  def change
    add_reference :historia_familiars, :anamnese, null: false, foreign_key: true
  end
end
