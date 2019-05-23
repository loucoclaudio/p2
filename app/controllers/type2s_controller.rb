class Type2sController < ApplicationController
  before_action :set_type2, only: [:show, :edit, :update, :destroy]

  # GET /type2s
  # GET /type2s.json
  def index
    @type2s = Type2.all
  end

  # GET /type2s/1
  # GET /type2s/1.json
  def show
  end

  # GET /type2s/new
  def new
    @type2 = Type2.new
  end

  # GET /type2s/1/edit
  def edit
  end

  # POST /type2s
  # POST /type2s.json
  def create
    @type2 = Type2.new(type2_params)

    respond_to do |format|
      if @type2.save
        format.html { redirect_to @type2, notice: 'Type2 was successfully created.' }
        format.json { render :show, status: :created, location: @type2 }
      else
        format.html { render :new }
        format.json { render json: @type2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type2s/1
  # PATCH/PUT /type2s/1.json
  def update
    respond_to do |format|
      if @type2.update(type2_params)
        format.html { redirect_to @type2, notice: 'Type2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @type2 }
      else
        format.html { render :edit }
        format.json { render json: @type2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type2s/1
  # DELETE /type2s/1.json
  def destroy
    @type2.destroy
    respond_to do |format|
      format.html { redirect_to type2s_url, notice: 'Type2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type2
      @type2 = Type2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type2_params
      params.require(:type2).permit(:type)
    end
end
