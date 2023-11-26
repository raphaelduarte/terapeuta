require "test_helper"

class UsersBackoffice::Welcome::PacienteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_paciente_index_url
    assert_response :success
  end
end
