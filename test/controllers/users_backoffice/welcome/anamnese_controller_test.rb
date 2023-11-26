require "test_helper"

class UsersBackoffice::Welcome::AnamneseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_anamnese_index_url
    assert_response :success
  end
end
