require 'rest-client'
require 'json'
class UsersBackoffice::Welcome::ConfiguracaoController < UsersBackofficeController
  def index
  end

  def busca_cep
    @endereco_formatado = AddressAPI.fetch_data(params[:cep])
    session[:tipo_hab] = params[:flexRadioDefault]
    @ap = session[:tipo_hab]

    respond_to do |format|
      format.turbo_stream do
        if @ap == 'Apartamento'
          render turbo_stream: turbo_stream.replace("enderecos_frame", partial: "enderecos/shared/apartamento", locals: { endereco_formatado: @endereco_formatado, ap: @ap })
        else
          render turbo_stream: turbo_stream.replace("enderecos_frame", partial: "enderecos/shared/endereco_bloco", locals: { endereco_formatado: @endereco_formatado, ap: @ap })
        end
      end
    end
  end
end
