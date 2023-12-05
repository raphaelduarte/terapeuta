class CreateEstadoCivils < ActiveRecord::Migration[7.1]
  def change
    create_table :estado_civils do |t|
      t.string :estadoCivil

      t.timestamps
    end
  end
end
