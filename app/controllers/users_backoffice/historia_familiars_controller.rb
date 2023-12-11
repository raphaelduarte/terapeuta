class HistoriaFamiliarsController < UsersBackofficeController
  before_action :set_historia_familiar, only: %i[ show edit update destroy ]

  # GET /historia_familiars or /historia_familiars.json
  def index
    @historia_familiars = HistoriaFamiliar.all
  end

  # GET /historia_familiars/1 or /historia_familiars/1.json
  def show
  end

  # GET /historia_familiars/new
  def new
    @historia_familiar = HistoriaFamiliar.new
  end

  # GET /historia_familiars/1/edit
  def edit
  end

  # POST /historia_familiars or /historia_familiars.json
  def create
    @historia_familiar = HistoriaFamiliar.new(historia_familiar_params)

    respond_to do |format|
      if @historia_familiar.save
        format.html { redirect_to historia_familiar_url(@historia_familiar), notice: "Historia familiar was successfully created." }
        format.json { render :show, status: :created, location: @historia_familiar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historia_familiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_familiars/1 or /historia_familiars/1.json
  def update
    respond_to do |format|
      if @historia_familiar.update(historia_familiar_params)
        format.html { redirect_to historia_familiar_url(@historia_familiar), notice: "Historia familiar was successfully updated." }
        format.json { render :show, status: :ok, location: @historia_familiar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historia_familiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_familiars/1 or /historia_familiars/1.json
  def destroy
    @historia_familiar.destroy!

    respond_to do |format|
      format.html { redirect_to historia_familiars_url, notice: "Historia familiar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_familiar
      @historia_familiar = HistoriaFamiliar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historia_familiar_params
      params.fetch(:historia_familiar, {})
    end
end
