class CreateRevisaoSistemas < ActiveRecord::Migration[7.1]
  def change
    create_table :revisao_sistemas do |t|
      t.string :perguntasTodosSistemasCorpo

      t.timestamps
    end
  end
end
