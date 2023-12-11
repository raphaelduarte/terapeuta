class HistoriaDoencaAtualsController < UsersBackofficeController
  before_action :set_historia_doenca_atual, only: %i[ show edit update destroy ]

  # GET /historia_doenca_atuals or /historia_doenca_atuals.json
  def index
    @historia_doenca_atuals = HistoriaDoencaAtual.all
  end

  # GET /historia_doenca_atuals/1 or /historia_doenca_atuals/1.json
  def show
  end

  # GET /historia_doenca_atuals/new
  def new
    @historia_doenca_atual = HistoriaDoencaAtual.new
  end

  # GET /historia_doenca_atuals/1/edit
  def edit
  end

  # POST /historia_doenca_atuals or /historia_doenca_atuals.json
  def create
    @historia_doenca_atual = HistoriaDoencaAtual.new(historia_doenca_atual_params)

    respond_to do |format|
      if @historia_doenca_atual.save
        format.html { redirect_to historia_doenca_atual_url(@historia_doenca_atual), notice: "Historia doenca atual was successfully created." }
        format.json { render :show, status: :created, location: @historia_doenca_atual }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historia_doenca_atual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_doenca_atuals/1 or /historia_doenca_atuals/1.json
  def update
    respond_to do |format|
      if @historia_doenca_atual.update(historia_doenca_atual_params)
        format.html { redirect_to historia_doenca_atual_url(@historia_doenca_atual), notice: "Historia doenca atual was successfully updated." }
        format.json { render :show, status: :ok, location: @historia_doenca_atual }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historia_doenca_atual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_doenca_atuals/1 or /historia_doenca_atuals/1.json
  def destroy
    @historia_doenca_atual.destroy!

    respond_to do |format|
      format.html { redirect_to historia_doenca_atuals_url, notice: "Historia doenca atual was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_doenca_atual
      @historia_doenca_atual = HistoriaDoencaAtual.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historia_doenca_atual_params
      params.fetch(:historia_doenca_atual, {})
    end
end
