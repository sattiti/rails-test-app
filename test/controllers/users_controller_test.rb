require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(name: 'sam', email: 'sam@example.com', password: 'samsam', password_confirmation: 'samsam')
  end

  test "should get new" do
    get signup_url
    assert_response :success
  end
end
