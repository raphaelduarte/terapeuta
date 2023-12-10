class AddPessoaRefToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :pessoa, null: false, foreign_key: true
  end
end
