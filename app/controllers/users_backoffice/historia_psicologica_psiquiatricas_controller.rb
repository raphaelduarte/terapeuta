class HistoriaPsicologicaPsiquiatricasController < UsersBackofficeController
  before_action :set_historia_psicologica_psiquiatrica, only: %i[ show edit update destroy ]

  # GET /historia_psicologica_psiquiatricas or /historia_psicologica_psiquiatricas.json
  def index
    @historia_psicologica_psiquiatricas = HistoriaPsicologicaPsiquiatrica.all
  end

  # GET /historia_psicologica_psiquiatricas/1 or /historia_psicologica_psiquiatricas/1.json
  def show
  end

  # GET /historia_psicologica_psiquiatricas/new
  def new
    @historia_psicologica_psiquiatrica = HistoriaPsicologicaPsiquiatrica.new
  end

  # GET /historia_psicologica_psiquiatricas/1/edit
  def edit
  end

  # POST /historia_psicologica_psiquiatricas or /historia_psicologica_psiquiatricas.json
  def create
    @historia_psicologica_psiquiatrica = HistoriaPsicologicaPsiquiatrica.new(historia_psicologica_psiquiatrica_params)

    respond_to do |format|
      if @historia_psicologica_psiquiatrica.save
        format.html { redirect_to historia_psicologica_psiquiatrica_url(@historia_psicologica_psiquiatrica), notice: "Historia psicologica psiquiatrica was successfully created." }
        format.json { render :show, status: :created, location: @historia_psicologica_psiquiatrica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historia_psicologica_psiquiatrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_psicologica_psiquiatricas/1 or /historia_psicologica_psiquiatricas/1.json
  def update
    respond_to do |format|
      if @historia_psicologica_psiquiatrica.update(historia_psicologica_psiquiatrica_params)
        format.html { redirect_to historia_psicologica_psiquiatrica_url(@historia_psicologica_psiquiatrica), notice: "Historia psicologica psiquiatrica was successfully updated." }
        format.json { render :show, status: :ok, location: @historia_psicologica_psiquiatrica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historia_psicologica_psiquiatrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_psicologica_psiquiatricas/1 or /historia_psicologica_psiquiatricas/1.json
  def destroy
    @historia_psicologica_psiquiatrica.destroy!

    respond_to do |format|
      format.html { redirect_to historia_psicologica_psiquiatricas_url, notice: "Historia psicologica psiquiatrica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_psicologica_psiquiatrica
      @historia_psicologica_psiquiatrica = HistoriaPsicologicaPsiquiatrica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historia_psicologica_psiquiatrica_params
      params.fetch(:historia_psicologica_psiquiatrica, {})
    end
end
