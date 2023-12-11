class AddAnamneseToHistoriaSexualReprodutiva < ActiveRecord::Migration[7.1]
  def change
    add_reference :historia_sexual_reprodutivas, :anamnese, null: false, foreign_key: true
  end
end
