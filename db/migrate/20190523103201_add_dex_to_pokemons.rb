class AddDexToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :dex, foreign_key: true
  end
end
