class CreateCasaNumeros < ActiveRecord::Migration[7.1]
  def change
    create_table :casa_numeros do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
