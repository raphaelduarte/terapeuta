class AddDocumentoToCnpj < ActiveRecord::Migration[7.1]
  def change
    add_reference :cnpjs, :documento, null: false, foreign_key: true
  end
end
