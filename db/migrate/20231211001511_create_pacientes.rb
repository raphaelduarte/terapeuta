class CreatePacientes < ActiveRecord::Migration[7.1]
  def change
    create_table :pacientes do |t|
      t.references :pessoa, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
