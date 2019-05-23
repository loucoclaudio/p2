class CreateTipo2s < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo2s do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
