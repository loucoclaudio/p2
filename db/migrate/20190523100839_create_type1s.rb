class CreateType1s < ActiveRecord::Migration[5.2]
  def change
    create_table :type1s do |t|
      t.string :type

      t.timestamps
    end
  end
end
