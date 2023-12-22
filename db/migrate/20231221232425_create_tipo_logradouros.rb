class CreateTipoLogradouros < ActiveRecord::Migration[7.1]
  def change
    create_table :tipo_logradouros do |t|
      t.references :casa, null: false, foreign_key: true
      t.references :apartamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
