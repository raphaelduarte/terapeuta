class AddCountryToEnderecos < ActiveRecord::Migration[7.1]
  def change
    add_column :enderecos, :country, :string
  end
end
