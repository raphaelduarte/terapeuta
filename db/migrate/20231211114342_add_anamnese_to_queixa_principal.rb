class AddAnamneseToQueixaPrincipal < ActiveRecord::Migration[7.1]
  def change
    add_reference :queixa_principals, :anamnese, null: false, foreign_key: true
  end
end
