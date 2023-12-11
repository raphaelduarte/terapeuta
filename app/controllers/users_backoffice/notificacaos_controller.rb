class NotificacaosController < UsersBackofficeController
  before_action :set_notificacao, only: %i[ show edit update destroy ]

  # GET /notificacaos or /notificacaos.json
  def index
    @notificacaos = Notificacao.all
  end

  # GET /notificacaos/1 or /notificacaos/1.json
  def show
  end

  # GET /notificacaos/new
  def new
    @notificacao = Notificacao.new
  end

  # GET /notificacaos/1/edit
  def edit
  end

  # POST /notificacaos or /notificacaos.json
  def create
    @notificacao = Notificacao.new(notificacao_params)

    respond_to do |format|
      if @notificacao.save
        format.html { redirect_to notificacao_url(@notificacao), notice: "Notificacao was successfully created." }
        format.json { render :show, status: :created, location: @notificacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notificacaos/1 or /notificacaos/1.json
  def update
    respond_to do |format|
      if @notificacao.update(notificacao_params)
        format.html { redirect_to notificacao_url(@notificacao), notice: "Notificacao was successfully updated." }
        format.json { render :show, status: :ok, location: @notificacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificacaos/1 or /notificacaos/1.json
  def destroy
    @notificacao.destroy!

    respond_to do |format|
      format.html { redirect_to notificacaos_url, notice: "Notificacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificacao
      @notificacao = Notificacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notificacao_params
      params.require(:notificacao).permit(:aviso1hAntes, :aviso23hAntes, :avisoHorarioEspecifico, :consulta_id)
    end
end
