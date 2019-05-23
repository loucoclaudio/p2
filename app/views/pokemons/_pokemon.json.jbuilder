json.extract! pokemon, :id, :species, :sprite, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
