class MakeColumnOptionalInEnderecos < ActiveRecord::Migration[7.1]
  def change
    change_column_null :enderecos, :street, false
    change_column_null :enderecos, :number, false
    change_column_null :enderecos, :neighborhood, false
    change_column_null :enderecos, :city, false
    change_column_null :enderecos, :state, false
    change_column_null :enderecos, :country, false
    change_column_null :enderecos, :complement, true
  end
end
