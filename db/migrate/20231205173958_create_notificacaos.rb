class CreateNotificacaos < ActiveRecord::Migration[7.1]
  def change
    create_table :notificacaos do |t|
      t.string :aviso1hAntes
      t.string :aviso23hAntes
      t.string :avisoHorarioEspecifico

      t.timestamps
    end
  end
end
