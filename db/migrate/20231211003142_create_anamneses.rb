class CreateAnamneses < ActiveRecord::Migration[7.1]
  def change
    create_table :anamneses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
