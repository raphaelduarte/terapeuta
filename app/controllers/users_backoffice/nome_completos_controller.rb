class NomeCompletosController < ApplicationController
  before_action :set_nome_completo, only: %i[ show edit update destroy ]

  # GET /nome_completos or /nome_completos.json
  def index
    @nome_completos = NomeCompleto.all
  end

  # GET /nome_completos/1 or /nome_completos/1.json
  def show
  end

  # GET /nome_completos/new
  def new
    @nome_completo = NomeCompleto.new
  end

  # GET /nome_completos/1/edit
  def edit
  end

  # POST /nome_completos or /nome_completos.json
  def create
    @nome_completo = NomeCompleto.new(nome_completo_params)

    respond_to do |format|
      if @nome_completo.save
        format.html { redirect_to nome_completo_url(@nome_completo), notice: "Nome completo was successfully created." }
        format.json { render :show, status: :created, location: @nome_completo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nome_completo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nome_completos/1 or /nome_completos/1.json
  def update
    respond_to do |format|
      if @nome_completo.update(nome_completo_params)
        format.html { redirect_to nome_completo_url(@nome_completo), notice: "Nome completo was successfully updated." }
        format.json { render :show, status: :ok, location: @nome_completo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nome_completo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nome_completos/1 or /nome_completos/1.json
  def destroy
    @nome_completo.destroy!

    respond_to do |format|
      format.html { redirect_to nome_completos_url, notice: "Nome completo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nome_completo
      @nome_completo = NomeCompleto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nome_completo_params
      params.fetch(:nome_completo, {})
    end
end
