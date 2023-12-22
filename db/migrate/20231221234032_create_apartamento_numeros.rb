class CreateApartamentoNumeros < ActiveRecord::Migration[7.1]
  def change
    create_table :apartamento_numeros do |t|
      t.integer :numero_apartamento
      t.string :bloco
      t.integer :numero

      t.timestamps
    end
  end
end
