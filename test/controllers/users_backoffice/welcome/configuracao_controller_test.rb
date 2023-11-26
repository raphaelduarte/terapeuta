require "test_helper"

class UsersBackoffice::Welcome::ConfiguracaoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_configuracao_index_url
    assert_response :success
  end
end
