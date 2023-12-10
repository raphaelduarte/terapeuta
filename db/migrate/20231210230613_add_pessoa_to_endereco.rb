class AddPessoaToEndereco < ActiveRecord::Migration[7.1]
  def change
    add_reference :enderecos, :pessoa, null: false, foreign_key: true
  end
end
