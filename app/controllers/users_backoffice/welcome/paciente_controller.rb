class UsersBackoffice::Welcome::PacienteController < UsersBackofficeController
  def index
    @pacientes = Paciente.all
  end
end
