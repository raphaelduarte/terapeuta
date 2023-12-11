class QueixaPrincipalsController < UsersBackofficeController
  before_action :set_queixa_principal, only: %i[ show edit update destroy ]

  # GET /queixa_principals or /queixa_principals.json
  def index
    @queixa_principals = QueixaPrincipal.all
  end

  # GET /queixa_principals/1 or /queixa_principals/1.json
  def show
  end

  # GET /queixa_principals/new
  def new
    @queixa_principal = QueixaPrincipal.new
  end

  # GET /queixa_principals/1/edit
  def edit
  end

  # POST /queixa_principals or /queixa_principals.json
  def create
    @queixa_principal = QueixaPrincipal.new(queixa_principal_params)

    respond_to do |format|
      if @queixa_principal.save
        format.html { redirect_to queixa_principal_url(@queixa_principal), notice: "Queixa principal was successfully created." }
        format.json { render :show, status: :created, location: @queixa_principal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @queixa_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queixa_principals/1 or /queixa_principals/1.json
  def update
    respond_to do |format|
      if @queixa_principal.update(queixa_principal_params)
        format.html { redirect_to queixa_principal_url(@queixa_principal), notice: "Queixa principal was successfully updated." }
        format.json { render :show, status: :ok, location: @queixa_principal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @queixa_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queixa_principals/1 or /queixa_principals/1.json
  def destroy
    @queixa_principal.destroy!

    respond_to do |format|
      format.html { redirect_to queixa_principals_url, notice: "Queixa principal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queixa_principal
      @queixa_principal = QueixaPrincipal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def queixa_principal_params
      params.fetch(:queixa_principal, {})
    end
end
