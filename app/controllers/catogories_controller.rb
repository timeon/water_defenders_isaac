class CatogoriesController < ApplicationController
  before_action :set_catogory, only: [:show, :edit, :update, :destroy]

  # GET /catogories
  # GET /catogories.json
  def index
    @catogories = Catogory.all
  end

  # GET /catogories/1
  # GET /catogories/1.json
  def show
  end

  # GET /catogories/new
  def new
    @catogory = Catogory.new
  end

  # GET /catogories/1/edit
  def edit
  end

  # POST /catogories
  # POST /catogories.json
  def create
    @catogory = Catogory.new(catogory_params)

    respond_to do |format|
      if @catogory.save
        format.html { redirect_to @catogory, notice: 'Catogory was successfully created.' }
        format.json { render :show, status: :created, location: @catogory }
      else
        format.html { render :new }
        format.json { render json: @catogory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catogories/1
  # PATCH/PUT /catogories/1.json
  def update
    respond_to do |format|
      if @catogory.update(catogory_params)
        format.html { redirect_to @catogory, notice: 'Catogory was successfully updated.' }
        format.json { render :show, status: :ok, location: @catogory }
      else
        format.html { render :edit }
        format.json { render json: @catogory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catogories/1
  # DELETE /catogories/1.json
  def destroy
    @catogory.destroy
    respond_to do |format|
      format.html { redirect_to catogories_url, notice: 'Catogory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catogory
      @catogory = Catogory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catogory_params
      params.require(:catogory).permit(:name)
    end
end
