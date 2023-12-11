class AnamnesesController < UsersBackofficeController
  before_action :set_anamnese, only: %i[ show edit update destroy ]

  # GET /anamneses or /anamneses.json
  def index
    @anamneses = Anamnese.all
  end

  # GET /anamneses/1 or /anamneses/1.json
  def show
  end

  # GET /anamneses/new
  def new
    @anamnese = Anamnese.new
  end

  # GET /anamneses/1/edit
  def edit
  end

  # POST /anamneses or /anamneses.json
  def create
    @anamnese = Anamnese.new(anamnese_params)

    respond_to do |format|
      if @anamnese.save
        format.html { redirect_to anamnese_url(@anamnese), notice: "Anamnese was successfully created." }
        format.json { render :show, status: :created, location: @anamnese }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anamneses/1 or /anamneses/1.json
  def update
    respond_to do |format|
      if @anamnese.update(anamnese_params)
        format.html { redirect_to anamnese_url(@anamnese), notice: "Anamnese was successfully updated." }
        format.json { render :show, status: :ok, location: @anamnese }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anamnese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anamneses/1 or /anamneses/1.json
  def destroy
    @anamnese.destroy!

    respond_to do |format|
      format.html { redirect_to anamneses_url, notice: "Anamnese was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anamnese
      @anamnese = Anamnese.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anamnese_params
      params.require(:anamnese).permit(:user_id, :paciente_id)
    end
end
