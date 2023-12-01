class UsersBackoffice::Welcome::MensagemController < UsersBackofficeController
  require  'debug'
  def index
  end

  def envia_mensagem
    Zapi.whatsapp_api(params[:mensagem])
    render :index
  end
end
