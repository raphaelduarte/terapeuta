class CreatePagamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :pagamentos do |t|
      t.string :formaPagamento
      t.string :statusPagamento

      t.timestamps
    end
  end
end
