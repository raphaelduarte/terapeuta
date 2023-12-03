class AddNeighborhoodToEnderecos < ActiveRecord::Migration[7.1]
  def change
    add_column :enderecos, :neighborhood, :string
  end
end
