require "test_helper"

class UsersBackoffice::Welcome::ConsultaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_consulta_index_url
    assert_response :success
  end
end
