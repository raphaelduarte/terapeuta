class RevisaoSistemasController < UsersBackofficeController
  before_action :set_revisao_sistema, only: %i[ show edit update destroy ]

  # GET /revisao_sistemas or /revisao_sistemas.json
  def index
    @revisao_sistemas = RevisaoSistema.all
  end

  # GET /revisao_sistemas/1 or /revisao_sistemas/1.json
  def show
  end

  # GET /revisao_sistemas/new
  def new
    @revisao_sistema = RevisaoSistema.new
  end

  # GET /revisao_sistemas/1/edit
  def edit
  end

  # POST /revisao_sistemas or /revisao_sistemas.json
  def create
    @revisao_sistema = RevisaoSistema.new(revisao_sistema_params)

    respond_to do |format|
      if @revisao_sistema.save
        format.html { redirect_to revisao_sistema_url(@revisao_sistema), notice: "Revisao sistema was successfully created." }
        format.json { render :show, status: :created, location: @revisao_sistema }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @revisao_sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revisao_sistemas/1 or /revisao_sistemas/1.json
  def update
    respond_to do |format|
      if @revisao_sistema.update(revisao_sistema_params)
        format.html { redirect_to revisao_sistema_url(@revisao_sistema), notice: "Revisao sistema was successfully updated." }
        format.json { render :show, status: :ok, location: @revisao_sistema }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @revisao_sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revisao_sistemas/1 or /revisao_sistemas/1.json
  def destroy
    @revisao_sistema.destroy!

    respond_to do |format|
      format.html { redirect_to revisao_sistemas_url, notice: "Revisao sistema was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revisao_sistema
      @revisao_sistema = RevisaoSistema.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def revisao_sistema_params
      params.fetch(:revisao_sistema, {})
    end
end
