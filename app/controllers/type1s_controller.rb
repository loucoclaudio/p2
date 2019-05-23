class Type1sController < ApplicationController
  before_action :set_type1, only: [:show, :edit, :update, :destroy]

  # GET /type1s
  # GET /type1s.json
  def index
    @type1s = Type1.all
  end

  # GET /type1s/1
  # GET /type1s/1.json
  def show
  end

  # GET /type1s/new
  def new
    @type1 = Type1.new
  end

  # GET /type1s/1/edit
  def edit
  end

  # POST /type1s
  # POST /type1s.json
  def create
    @type1 = Type1.new(type1_params)

    respond_to do |format|
      if @type1.save
        format.html { redirect_to @type1, notice: 'Type1 was successfully created.' }
        format.json { render :show, status: :created, location: @type1 }
      else
        format.html { render :new }
        format.json { render json: @type1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type1s/1
  # PATCH/PUT /type1s/1.json
  def update
    respond_to do |format|
      if @type1.update(type1_params)
        format.html { redirect_to @type1, notice: 'Type1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @type1 }
      else
        format.html { render :edit }
        format.json { render json: @type1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type1s/1
  # DELETE /type1s/1.json
  def destroy
    @type1.destroy
    respond_to do |format|
      format.html { redirect_to type1s_url, notice: 'Type1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type1
      @type1 = Type1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type1_params
      params.require(:type1).permit(:type)
    end
end
