class CreateRevisaoHabitos < ActiveRecord::Migration[7.1]
  def change
    create_table :revisao_habitos do |t|
      t.string :dietaNutricao
      t.string :rotinaSono

      t.timestamps
    end
  end
end
