require "test_helper"

class UsersBackoffice::Welcome::MensagemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_mensagem_index_url
    assert_response :success
  end
end
