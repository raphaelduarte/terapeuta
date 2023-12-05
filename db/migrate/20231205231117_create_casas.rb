class CreateCasas < ActiveRecord::Migration[7.1]
  def change
    create_table :casas do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
