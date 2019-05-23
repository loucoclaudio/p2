class CreateType2s < ActiveRecord::Migration[5.2]
  def change
    create_table :type2s do |t|
      t.string :type

      t.timestamps
    end
  end
end
