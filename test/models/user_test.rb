require 'test_helper'
class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
    password_digest: "foobar", password_confirmation: "foobar")
  end

  test "password should be present (nonblank)" do
    @user.password_digest = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password_digest = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
