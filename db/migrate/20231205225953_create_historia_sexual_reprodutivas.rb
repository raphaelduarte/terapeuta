class CreateHistoriaSexualReprodutivas < ActiveRecord::Migration[7.1]
  def change
    create_table :historia_sexual_reprodutivas do |t|
      t.string :vidaSexualAfetiva
      t.string :metodosContraceptivos
      t.string :dst
      t.string :menstruacaoGravidezMenopausa

      t.timestamps
    end
  end
end
