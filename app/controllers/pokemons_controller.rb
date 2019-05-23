class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
  before_action :set_dex_options, only: [:new, :create, :edit, :update]
  before_action :set_tipo1_options, only: [:new, :create, :edit, :update]
  before_action :set_tipo2_options, only: [:new, :create, :edit, :update]
  

  # GET /pokemons
  # GET /pokemons.json
  def index
    @pokemons = Pokemon.all
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
  end

  # GET /pokemons/new
  def new
    @pokemon = Pokemon.new
  end

  # GET /pokemons/1/edit
  def edit
  end

  # POST /pokemons
  # POST /pokemons.json
  def create
    @pokemon = Pokemon.new(pokemon_params)

    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to @pokemon, notice: 'Pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @pokemon }
      else
        format.html { render :new }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemons/1
  # PATCH/PUT /pokemons/1.json
  def update
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html { redirect_to @pokemon, notice: 'Pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokemon }
      else
        format.html { render :edit }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemons/1
  # DELETE /pokemons/1.json
  def destroy
    @pokemon.destroy
    respond_to do |format|
      format.html { redirect_to pokemons_url, notice: 'Pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_dex_options
      @dex_options = Dex.all.pluck(:number , :id)
    end
    
    def set_tipo1_options 
      @tipo1_options = Tipo1.all.pluck(:tipo , :id)
    end
    
    def set_tipo2_options
      @tipo2_options = Tipo2.all.pluck(:tipo , :id)
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_params
      params.require(:pokemon).permit(:species, :sprite, :dex_id , :tipo1_id , :tipo2_id)
    end
end
