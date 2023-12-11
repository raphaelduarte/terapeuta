class CreateData < ActiveRecord::Migration[7.1]
  def change
    create_table :data do |t|
      t.datetime :data_completa

      t.timestamps
    end
  end
end
