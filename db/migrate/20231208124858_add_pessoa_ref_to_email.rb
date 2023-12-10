class AddPessoaRefToEmail < ActiveRecord::Migration[7.1]
  def change
    add_reference :emails, :pessoa, null: false, foreign_key: true
  end
end
