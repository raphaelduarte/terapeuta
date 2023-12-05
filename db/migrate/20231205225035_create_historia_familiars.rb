class CreateHistoriaFamiliars < ActiveRecord::Migration[7.1]
  def change
    create_table :historia_familiars do |t|
      t.string :doencasHereditarias
      t.string :historicoDoencasFamilia

      t.timestamps
    end
  end
end
