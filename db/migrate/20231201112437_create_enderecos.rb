class CreateEnderecos < ActiveRecord::Migration[7.1]
  def change
    create_table :enderecos do |t|
      t.string :street
      t.integer :number
      t.string :complement
      t.string :neigborhood
      t.string :city
      t.string :state
      t.string :c

      t.timestamps
    end
  end
end
