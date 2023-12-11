class HistoriaSexualReprodutivasController < UsersBackofficeController
  before_action :set_historia_sexual_reprodutiva, only: %i[ show edit update destroy ]

  # GET /historia_sexual_reprodutivas or /historia_sexual_reprodutivas.json
  def index
    @historia_sexual_reprodutivas = HistoriaSexualReprodutiva.all
  end

  # GET /historia_sexual_reprodutivas/1 or /historia_sexual_reprodutivas/1.json
  def show
  end

  # GET /historia_sexual_reprodutivas/new
  def new
    @historia_sexual_reprodutiva = HistoriaSexualReprodutiva.new
  end

  # GET /historia_sexual_reprodutivas/1/edit
  def edit
  end

  # POST /historia_sexual_reprodutivas or /historia_sexual_reprodutivas.json
  def create
    @historia_sexual_reprodutiva = HistoriaSexualReprodutiva.new(historia_sexual_reprodutiva_params)

    respond_to do |format|
      if @historia_sexual_reprodutiva.save
        format.html { redirect_to historia_sexual_reprodutiva_url(@historia_sexual_reprodutiva), notice: "Historia sexual reprodutiva was successfully created." }
        format.json { render :show, status: :created, location: @historia_sexual_reprodutiva }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historia_sexual_reprodutiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_sexual_reprodutivas/1 or /historia_sexual_reprodutivas/1.json
  def update
    respond_to do |format|
      if @historia_sexual_reprodutiva.update(historia_sexual_reprodutiva_params)
        format.html { redirect_to historia_sexual_reprodutiva_url(@historia_sexual_reprodutiva), notice: "Historia sexual reprodutiva was successfully updated." }
        format.json { render :show, status: :ok, location: @historia_sexual_reprodutiva }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historia_sexual_reprodutiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_sexual_reprodutivas/1 or /historia_sexual_reprodutivas/1.json
  def destroy
    @historia_sexual_reprodutiva.destroy!

    respond_to do |format|
      format.html { redirect_to historia_sexual_reprodutivas_url, notice: "Historia sexual reprodutiva was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_sexual_reprodutiva
      @historia_sexual_reprodutiva = HistoriaSexualReprodutiva.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historia_sexual_reprodutiva_params
      params.fetch(:historia_sexual_reprodutiva, {})
    end
end
