class AddAnamneseToRevisaoHabito < ActiveRecord::Migration[7.1]
  def change
    add_reference :revisao_habitos, :anamnese, null: false, foreign_key: true
  end
end
