require 'test_helper'

class TiosControllerTest < ActionController::TestCase
  setup do
    @tio = tios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tio" do
    assert_difference('Tio.count') do
      post :create, tio: {  }
    end

    assert_redirected_to tio_path(assigns(:tio))
  end

  test "should show tio" do
    get :show, id: @tio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tio
    assert_response :success
  end

  test "should update tio" do
    patch :update, id: @tio, tio: {  }
    assert_redirected_to tio_path(assigns(:tio))
  end

  test "should destroy tio" do
    assert_difference('Tio.count', -1) do
      delete :destroy, id: @tio
    end

    assert_redirected_to tios_path
  end
end
