class CreateApartamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :apartamentos do |t|
      t.integer :numeroApartamento
      t.string :bloco
      t.integer :numero

      t.timestamps
    end
  end
end
