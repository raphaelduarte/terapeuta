class HistoriaMedicaPregressasController < UsersBackofficeController
  before_action :set_historia_medica_pregressa, only: %i[ show edit update destroy ]

  # GET /historia_medica_pregressas or /historia_medica_pregressas.json
  def index
    @historia_medica_pregressas = HistoriaMedicaPregressa.all
  end

  # GET /historia_medica_pregressas/1 or /historia_medica_pregressas/1.json
  def show
  end

  # GET /historia_medica_pregressas/new
  def new
    @historia_medica_pregressa = HistoriaMedicaPregressa.new
  end

  # GET /historia_medica_pregressas/1/edit
  def edit
  end

  # POST /historia_medica_pregressas or /historia_medica_pregressas.json
  def create
    @historia_medica_pregressa = HistoriaMedicaPregressa.new(historia_medica_pregressa_params)

    respond_to do |format|
      if @historia_medica_pregressa.save
        format.html { redirect_to historia_medica_pregressa_url(@historia_medica_pregressa), notice: "Historia medica pregressa was successfully created." }
        format.json { render :show, status: :created, location: @historia_medica_pregressa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historia_medica_pregressa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_medica_pregressas/1 or /historia_medica_pregressas/1.json
  def update
    respond_to do |format|
      if @historia_medica_pregressa.update(historia_medica_pregressa_params)
        format.html { redirect_to historia_medica_pregressa_url(@historia_medica_pregressa), notice: "Historia medica pregressa was successfully updated." }
        format.json { render :show, status: :ok, location: @historia_medica_pregressa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historia_medica_pregressa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_medica_pregressas/1 or /historia_medica_pregressas/1.json
  def destroy
    @historia_medica_pregressa.destroy!

    respond_to do |format|
      format.html { redirect_to historia_medica_pregressas_url, notice: "Historia medica pregressa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_medica_pregressa
      @historia_medica_pregressa = HistoriaMedicaPregressa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historia_medica_pregressa_params
      params.fetch(:historia_medica_pregressa, {})
    end
end
