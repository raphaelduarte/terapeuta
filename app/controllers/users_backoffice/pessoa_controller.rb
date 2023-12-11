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
      render 'users_backoffice/welcome/index'
    else
      render :new
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
