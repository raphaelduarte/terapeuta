class CreateHistoriaDoencaAtuals < ActiveRecord::Migration[7.1]
  def change
    create_table :historia_doenca_atuals do |t|
      t.datetime :inicioSintomas
      t.string :descricaoSintomasAtuais
      t.string :fatoresMelhoraramOuPioraram

      t.timestamps
    end
  end
end
