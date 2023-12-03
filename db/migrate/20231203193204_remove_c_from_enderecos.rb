class RemoveCFromEnderecos < ActiveRecord::Migration[7.1]
  def change
    remove_column :enderecos, :c, :string
  end
end
