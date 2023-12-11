class AddAnamneseToHistoriaDoencaAtual < ActiveRecord::Migration[7.1]
  def change
    add_reference :historia_doenca_atuals, :anamnese, null: false, foreign_key: true
  end
end
