class AddPessoaRefToTelefone < ActiveRecord::Migration[7.1]
  def change
    add_reference :telefones, :pessoa, null: false, foreign_key: true
  end
end
