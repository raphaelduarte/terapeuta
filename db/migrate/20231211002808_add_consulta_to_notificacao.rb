class AddConsultaToNotificacao < ActiveRecord::Migration[7.1]
  def change
    add_reference :notificacaos, :consulta, null: false, foreign_key: true
  end
end
