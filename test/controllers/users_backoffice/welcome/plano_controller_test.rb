require "test_helper"

class UsersBackoffice::Welcome::PlanoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_welcome_plano_index_url
    assert_response :success
  end
end
