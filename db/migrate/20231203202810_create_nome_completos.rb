class CreateNomeCompletos < ActiveRecord::Migration[7.1]
  def change
    create_table :nome_completos do |t|
      t.string :nome
      t.string :sobrenome

      t.timestamps
    end
  end
end
