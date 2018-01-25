class ServingsController < ApplicationController
  before_action :set_serving, only: [:show, :edit, :update, :destroy]

  # GET /servings
  # GET /servings.json
  def index
    @servings = Serving.all
  end

  # GET /servings/1
  # GET /servings/1.json
  def show
  end

  # GET /servings/new
  def new
    @serving = Serving.new
  end

  # GET /servings/1/edit
  def edit
  end

  # POST /servings
  # POST /servings.json
  def create
    @serving = Serving.new(serving_params)

    respond_to do |format|
      if @serving.save
        format.html { redirect_to @serving, notice: 'Serving was successfully created.' }
        format.json { render :show, status: :created, location: @serving }
      else
        format.html { render :new }
        format.json { render json: @serving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servings/1
  # PATCH/PUT /servings/1.json
  def update
    respond_to do |format|
      if @serving.update(serving_params)
        format.html { redirect_to @serving, notice: 'Serving was successfully updated.' }
        format.json { render :show, status: :ok, location: @serving }
      else
        format.html { render :edit }
        format.json { render json: @serving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servings/1
  # DELETE /servings/1.json
  def destroy
    @serving.destroy
    respond_to do |format|
      format.html { redirect_to servings_url, notice: 'Serving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serving
      @serving = Serving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serving_params
      params.require(:serving).permit(:name)
    end
end
