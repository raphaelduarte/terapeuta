class AddPessoaRefToNomeCompleto < ActiveRecord::Migration[7.1]
  def change
    add_reference :nome_completos, :pessoa, null: false, foreign_key: true
  end
end
