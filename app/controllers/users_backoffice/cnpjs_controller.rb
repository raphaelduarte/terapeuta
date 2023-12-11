class CnpjsController < UsersBackofficeController
  before_action :set_cnpj, only: %i[ show edit update destroy ]

  # GET /cnpjs or /cnpjs.json
  def index
    @cnpjs = Cnpj.all
  end

  # GET /cnpjs/1 or /cnpjs/1.json
  def show
  end

  # GET /cnpjs/new
  def new
    @cnpj = Cnpj.new
  end

  # GET /cnpjs/1/edit
  def edit
  end

  # POST /cnpjs or /cnpjs.json
  def create
    @cnpj = Cnpj.new(cnpj_params)

    respond_to do |format|
      if @cnpj.save
        format.html { redirect_to cnpj_url(@cnpj), notice: "Cnpj was successfully created." }
        format.json { render :show, status: :created, location: @cnpj }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cnpj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnpjs/1 or /cnpjs/1.json
  def update
    respond_to do |format|
      if @cnpj.update(cnpj_params)
        format.html { redirect_to cnpj_url(@cnpj), notice: "Cnpj was successfully updated." }
        format.json { render :show, status: :ok, location: @cnpj }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cnpj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnpjs/1 or /cnpjs/1.json
  def destroy
    @cnpj.destroy!

    respond_to do |format|
      format.html { redirect_to cnpjs_url, notice: "Cnpj was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnpj
      @cnpj = Cnpj.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cnpj_params
      params.fetch(:cnpj, {})
    end
end
