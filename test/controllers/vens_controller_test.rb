require 'test_helper'

class VensControllerTest < ActionController::TestCase
  setup do
    @ven = vens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ven" do
    assert_difference('Ven.count') do
      post :create, ven: { cantidad: @ven.cantidad, cliente_id: @ven.cliente_id, producto_id: @ven.producto_id, vendedor_id: @ven.vendedor_id }
    end

    assert_redirected_to ven_path(assigns(:ven))
  end

  test "should show ven" do
    get :show, id: @ven
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ven
    assert_response :success
  end

  test "should update ven" do
    patch :update, id: @ven, ven: { cantidad: @ven.cantidad, cliente_id: @ven.cliente_id, producto_id: @ven.producto_id, vendedor_id: @ven.vendedor_id }
    assert_redirected_to ven_path(assigns(:ven))
  end

  test "should destroy ven" do
    assert_difference('Ven.count', -1) do
      delete :destroy, id: @ven
    end

    assert_redirected_to vens_path
  end
end
