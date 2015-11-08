require 'test_helper'

class PrecenciaControllerTest < ActionController::TestCase
  setup do
    @precencium = precencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precencium" do
    assert_difference('Precencium.count') do
      post :create, precencium: { hora: @precencium.hora, observacion: @precencium.observacion }
    end

    assert_redirected_to precencium_path(assigns(:precencium))
  end

  test "should show precencium" do
    get :show, id: @precencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precencium
    assert_response :success
  end

  test "should update precencium" do
    patch :update, id: @precencium, precencium: { hora: @precencium.hora, observacion: @precencium.observacion }
    assert_redirected_to precencium_path(assigns(:precencium))
  end

  test "should destroy precencium" do
    assert_difference('Precencium.count', -1) do
      delete :destroy, id: @precencium
    end

    assert_redirected_to precencia_path
  end
end
