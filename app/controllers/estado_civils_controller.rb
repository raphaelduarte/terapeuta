class EstadoCivilsController < ApplicationController
  before_action :set_estado_civil, only: %i[ show edit update destroy ]

  # GET /estado_civils or /estado_civils.json
  def index
    @estado_civils = EstadoCivil.all
  end

  # GET /estado_civils/1 or /estado_civils/1.json
  def show
  end

  # GET /estado_civils/new
  def new
    @estado_civil = EstadoCivil.new
  end

  # GET /estado_civils/1/edit
  def edit
  end

  # POST /estado_civils or /estado_civils.json
  def create
    @estado_civil = EstadoCivil.new(estado_civil_params)

    respond_to do |format|
      if @estado_civil.save
        format.html { redirect_to estado_civil_url(@estado_civil), notice: "Estado civil was successfully created." }
        format.json { render :show, status: :created, location: @estado_civil }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estado_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_civils/1 or /estado_civils/1.json
  def update
    respond_to do |format|
      if @estado_civil.update(estado_civil_params)
        format.html { redirect_to estado_civil_url(@estado_civil), notice: "Estado civil was successfully updated." }
        format.json { render :show, status: :ok, location: @estado_civil }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estado_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_civils/1 or /estado_civils/1.json
  def destroy
    @estado_civil.destroy!

    respond_to do |format|
      format.html { redirect_to estado_civils_url, notice: "Estado civil was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_civil
      @estado_civil = EstadoCivil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estado_civil_params
      params.fetch(:estado_civil, {})
    end
end
