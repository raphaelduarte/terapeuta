class CpfsController < UsersBackofficeController
  before_action :set_cpf, only: %i[ show edit update destroy ]

  # GET /cpfs or /cpfs.json
  def index
    @cpfs = Cpf.all
  end

  # GET /cpfs/1 or /cpfs/1.json
  def show
  end

  # GET /cpfs/new
  def new
    @cpf = Cpf.new
  end

  # GET /cpfs/1/edit
  def edit
  end

  # POST /cpfs or /cpfs.json
  def create
    @cpf = Cpf.new(cpf_params)

    respond_to do |format|
      if @cpf.save
        format.html { redirect_to cpf_url(@cpf), notice: "Cpf was successfully created." }
        format.json { render :show, status: :created, location: @cpf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpfs/1 or /cpfs/1.json
  def update
    respond_to do |format|
      if @cpf.update(cpf_params)
        format.html { redirect_to cpf_url(@cpf), notice: "Cpf was successfully updated." }
        format.json { render :show, status: :ok, location: @cpf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpfs/1 or /cpfs/1.json
  def destroy
    @cpf.destroy!

    respond_to do |format|
      format.html { redirect_to cpfs_url, notice: "Cpf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpf
      @cpf = Cpf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cpf_params
      params.fetch(:cpf, {})
    end
end
