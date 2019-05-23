class AddTipo2ToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :tipo2, foreign_key: true
  end
end
