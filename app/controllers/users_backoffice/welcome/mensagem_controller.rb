class UsersBackoffice::Welcome::MensagemController < UsersBackofficeController
  def index
  end

  def envia_mensagem
    Zapi.whatsapp_api(params[:mensagem])
  end

end
