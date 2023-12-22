class AddTipoLogradouroToEndereco < ActiveRecord::Migration[7.1]
  def change
    add_reference :enderecos, :tipo_logradouro, null: false, foreign_key: true
  end
end
