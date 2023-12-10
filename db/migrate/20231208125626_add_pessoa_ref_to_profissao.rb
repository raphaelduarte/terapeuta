class AddPessoaRefToProfissao < ActiveRecord::Migration[7.1]
  def change
    add_reference :profissaos, :pessoa, null: false, foreign_key: true
  end
end
