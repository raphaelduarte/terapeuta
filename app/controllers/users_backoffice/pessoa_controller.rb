class PessoaController < UsersBackofficeController
  def new
    @pessoa = Pessoa.new
    @pessoa.build_nome_completo
    @pessoa.build_user
    @pessoa.build_documento
    @pessoa.build_estado_civil
    @pessoa.enderecos.build
    @pessoa.emails.build
    @pessoa.telefones.build
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)
    if @pessoa.save
      render :new
    else
      render :new
    end
  end

  # GET /pessoas/1 or /profissaos/1.json
  def show
  end

  # GET /pessoas/1/edit
  def edit
  end

  # PATCH/PUT /pessoas/1 or /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to users_backoffice_pessoa_path(@pessoa), notice: "Pessoa was successfully updated." }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1 or /pessoas/1.json
  def destroy
    @pessoa.destroy!

    respond_to do |format|
      format.html { redirect_to users_backoffice_pessoa_path, notice: "Pessoa was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private

  def pessoa_params
    params.require(:pessoa).permit(:atributos_da_pessoa,
                                   nome_completo_attributes: [:nome, :sobrenome],
                                   user_attributes: [:email],
                                   endereco_attributes: [:street, :numer, :complement, :neighborhood, :city, :state, :country],
                                   telefone_attributes: [:ddd, :numero],
                                   email_attributes: [:email])
  end
end
