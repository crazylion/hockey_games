class CupsController < ApplicationController
  before_action :set_cup, only: %i[ show edit update destroy ]

  # GET /cups or /cups.json
  def index
    @cups = Cup.all
  end

  # GET /cups/1 or /cups/1.json
  def show
  end

  # GET /cups/new
  def new
    @cup = Cup.new
  end

  # GET /cups/1/edit
  def edit
  end

  # POST /cups or /cups.json
  def create
    @cup = Cup.new(cup_params)

    respond_to do |format|
      if @cup.save
        format.html { redirect_to cup_url(@cup), notice: "Cup was successfully created." }
        format.json { render :show, status: :created, location: @cup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cups/1 or /cups/1.json
  def update
    respond_to do |format|
      if @cup.update(cup_params)
        format.html { redirect_to cup_url(@cup), notice: "Cup was successfully updated." }
        format.json { render :show, status: :ok, location: @cup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cups/1 or /cups/1.json
  def destroy
    @cup.destroy

    respond_to do |format|
      format.html { redirect_to cups_url, notice: "Cup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cup
      @cup = Cup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cup_params
      params.require(:cup).permit(:name)
    end
end
