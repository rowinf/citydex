class SunshineHoursController < ApplicationController
  before_action :set_sunshine_hour, only: %i[ show edit update destroy ]

  # GET /sunshine_hours or /sunshine_hours.json
  def index
    @sunshine_hours = SunshineHour.all
  end

  # GET /sunshine_hours/1 or /sunshine_hours/1.json
  def show
  end

  # GET /sunshine_hours/new
  def new
    @sunshine_hour = SunshineHour.new
  end

  # GET /sunshine_hours/1/edit
  def edit
  end

  # POST /sunshine_hours or /sunshine_hours.json
  def create
    @sunshine_hour = SunshineHour.new(sunshine_hour_params)

    respond_to do |format|
      if @sunshine_hour.save
        format.html { redirect_to sunshine_hour_url(@sunshine_hour), notice: "Sunshine hour was successfully created." }
        format.json { render :show, status: :created, location: @sunshine_hour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sunshine_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sunshine_hours/1 or /sunshine_hours/1.json
  def update
    respond_to do |format|
      if @sunshine_hour.update(sunshine_hour_params)
        format.html { redirect_to sunshine_hour_url(@sunshine_hour), notice: "Sunshine hour was successfully updated." }
        format.json { render :show, status: :ok, location: @sunshine_hour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sunshine_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sunshine_hours/1 or /sunshine_hours/1.json
  def destroy
    @sunshine_hour.destroy!

    respond_to do |format|
      format.html { redirect_to sunshine_hours_url, notice: "Sunshine hour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sunshine_hour
      @sunshine_hour = SunshineHour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sunshine_hour_params
      params.require(:sunshine_hour).permit(:country, :city, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, :year, :ref)
    end
end
