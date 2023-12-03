class CreateCnpjs < ActiveRecord::Migration[7.1]
  def change
    create_table :cnpjs do |t|
      t.integer :cnpj

      t.timestamps
    end
  end
end
