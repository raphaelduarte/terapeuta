class RemoveNeigborhoodFromEnderecos < ActiveRecord::Migration[7.1]
  def change
    remove_column :enderecos, :neigborhood, :string
  end
end
