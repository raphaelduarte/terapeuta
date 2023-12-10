class AddDocumentoToCpf < ActiveRecord::Migration[7.1]
  def change
    add_reference :cpfs, :documento, null: false, foreign_key: true
  end
end
