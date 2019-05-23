class AddTipo1ToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :tipo1, foreign_key: true
  end
end
