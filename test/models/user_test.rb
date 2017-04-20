require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:john)
  end

  test "user should be valid" do
    @user.password = 'foofoofoo'
    assert @user.valid?, @user.errors.full_messages
  end
end
