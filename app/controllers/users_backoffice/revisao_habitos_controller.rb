class RevisaoHabitosController < UsersBackofficeController
  before_action :set_revisao_habito, only: %i[ show edit update destroy ]

  # GET /revisao_habitos or /revisao_habitos.json
  def index
    @revisao_habitos = RevisaoHabito.all
  end

  # GET /revisao_habitos/1 or /revisao_habitos/1.json
  def show
  end

  # GET /revisao_habitos/new
  def new
    @revisao_habito = RevisaoHabito.new
  end

  # GET /revisao_habitos/1/edit
  def edit
  end

  # POST /revisao_habitos or /revisao_habitos.json
  def create
    @revisao_habito = RevisaoHabito.new(revisao_habito_params)

    respond_to do |format|
      if @revisao_habito.save
        format.html { redirect_to revisao_habito_url(@revisao_habito), notice: "Revisao habito was successfully created." }
        format.json { render :show, status: :created, location: @revisao_habito }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @revisao_habito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revisao_habitos/1 or /revisao_habitos/1.json
  def update
    respond_to do |format|
      if @revisao_habito.update(revisao_habito_params)
        format.html { redirect_to revisao_habito_url(@revisao_habito), notice: "Revisao habito was successfully updated." }
        format.json { render :show, status: :ok, location: @revisao_habito }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @revisao_habito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revisao_habitos/1 or /revisao_habitos/1.json
  def destroy
    @revisao_habito.destroy!

    respond_to do |format|
      format.html { redirect_to revisao_habitos_url, notice: "Revisao habito was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revisao_habito
      @revisao_habito = RevisaoHabito.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def revisao_habito_params
      params.fetch(:revisao_habito, {})
    end
end
