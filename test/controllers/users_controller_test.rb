require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "user dashboard load success" do
    user = FactoryGirl.create(:user)
    get :show, :id => user.id
    assert_response :success
  end
end
