class AddPessoaToEstadoCivil < ActiveRecord::Migration[7.1]
  def change
    add_reference :estado_civils, :pessoa, null: false, foreign_key: true
  end
end
