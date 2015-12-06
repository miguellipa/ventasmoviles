require 'test_helper'

class SugerenciaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
