class AddAnamneseToRevisaoSistema < ActiveRecord::Migration[7.1]
  def change
    add_reference :revisao_sistemas, :anamnese, null: false, foreign_key: true
  end
end
