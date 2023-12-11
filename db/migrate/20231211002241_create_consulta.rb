class CreateConsulta < ActiveRecord::Migration[7.1]
  def change
    create_table :consulta do |t|
      t.references :paciente, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :data, null: false, foreign_key: true

      t.timestamps
    end
  end
end
