class CreateTelefones < ActiveRecord::Migration[7.1]
  def change
    create_table :telefones do |t|
      t.integer :ddd
      t.integer :numero

      t.timestamps
    end
  end
end
