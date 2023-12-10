class PessoaController < ApplicationController
  def new
    @pessoa = Pessoa.new
    @pessoa.build_nome_completo
    @pessoa.build_user
    @pessoa.build_documento
    @pessoa.build_estado_civil
    @pessoa.nome_completo.build_pessoa
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
                                   nome_completo_attributes: [:atributos_nome_completo],
                                   user_attributes: [:atributos_user],
                                   endereco_attributes: [:atributos_endereco],
                                   telefone_attributes: [:atributos_telefone],
                                   email_attributes: [:atributos_email])
  end
end
