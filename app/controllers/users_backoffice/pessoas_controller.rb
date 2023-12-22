class UsersBackoffice::PessoasController < UsersBackofficeController
  before_action :set_pessoa, only: %i[ show edit update destroy ]

  # GET /pessoa or /pessoa.json
  def index
    @pessoas = Pessoas.all
  end

  # GET /pessoa/1 or /pessoa/1.json
  def show
  end

  # GET /pessoa/new
  def new
    @pessoa = Pessoas.new
    @pessoa.build_nome_completo
    @pessoa.build_user
    @pessoa.build_documento
    @pessoa.build_estado_civil
    @pessoa.enderecos.build
    @pessoa.emails.build
    @pessoa.telefones.build
  end

  # GET /pessoa/1/edit
  def edit
  end

  # POST /pessoa or /pessoa.json
  def create
    puts params.inspect
    @pessoa = Pessoas.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to pessoa_url(@pessoa), notice: "Pessoas was successfully created." }
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa/1 or /pessoa/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to pessoa_url(@pessoa), notice: "Pessoas was successfully updated." }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa/1 or /pessoa/1.json
  def destroy
    @pessoa.destroy!

    respond_to do |format|
      format.html { redirect_to pessoas_url, notice: "Pessoas was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoas.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  def pessoa_params
    params.require(:pessoa).permit(:documento_id,
                                   :estado_civil_id,
                                   nome_completo_attributes: [:id ,:nome, :sobrenome, :_destroy],
                                   user_attributes: [:id, :email, :_destroy],
                                   endereco_attributes: [:id, :street, :numer, :complement, :neighborhood, :city, :state, :country, :_destroy],
                                   telefone_attributes: [:id, :ddd, :numero, :_destroy],
                                   email_attributes: [:id, :email, :_destroy])
  end
end
