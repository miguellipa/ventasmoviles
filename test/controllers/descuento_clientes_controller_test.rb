require 'test_helper'

class DescuentoClientesControllerTest < ActionController::TestCase
  setup do
    @descuento_cliente = descuento_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descuento_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descuento_cliente" do
    assert_difference('DescuentoCliente.count') do
      post :create, descuento_cliente: { descripcion: @descuento_cliente.descripcion, descuento: @descuento_cliente.descuento }
    end

    assert_redirected_to descuento_cliente_path(assigns(:descuento_cliente))
  end

  test "should show descuento_cliente" do
    get :show, id: @descuento_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descuento_cliente
    assert_response :success
  end

  test "should update descuento_cliente" do
    patch :update, id: @descuento_cliente, descuento_cliente: { descripcion: @descuento_cliente.descripcion, descuento: @descuento_cliente.descuento }
    assert_redirected_to descuento_cliente_path(assigns(:descuento_cliente))
  end

  test "should destroy descuento_cliente" do
    assert_difference('DescuentoCliente.count', -1) do
      delete :destroy, id: @descuento_cliente
    end

    assert_redirected_to descuento_clientes_path
  end
end
