class CreateQueixaPrincipals < ActiveRecord::Migration[7.1]
  def change
    create_table :queixa_principals do |t|
      t.string :motivoConsulta
      t.string :descricaoSintomas

      t.timestamps
    end
  end
end
