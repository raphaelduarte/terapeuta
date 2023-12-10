class CreateDocumentos < ActiveRecord::Migration[7.1]
  def change
    create_table :documentos do |t|
      t.references :pessoa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
