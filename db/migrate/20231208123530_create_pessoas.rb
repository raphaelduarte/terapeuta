class CreatePessoas < ActiveRecord::Migration[7.1]
  def change
    create_table :pessoas do |t|
      t.string :tipoPessoa

      t.timestamps
    end
  end
end
