class CreateCpfs < ActiveRecord::Migration[7.1]
  def change
    create_table :cpfs do |t|
      t.integer :cpf

      t.timestamps
    end
  end
end
