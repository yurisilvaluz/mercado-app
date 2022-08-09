require "test_helper"

class ComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compra = compras(:one)
  end

  test "should get index" do
    get compras_url
    assert_response :success
  end

  test "should get new" do
    get new_compra_url
    assert_response :success
  end

  test "should create compra" do
    assert_difference("Compra.count") do
      post compras_url, params: { compra: { cliente_id: @compra.cliente_id, data_compra: @compra.data_compra, produto_id: @compra.produto_id } }
    end

    assert_redirected_to compra_url(Compra.last)
  end

  test "should show compra" do
    get compra_url(@compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_compra_url(@compra)
    assert_response :success
  end

  test "should update compra" do
    patch compra_url(@compra), params: { compra: { cliente_id: @compra.cliente_id, data_compra: @compra.data_compra, produto_id: @compra.produto_id } }
    assert_redirected_to compra_url(@compra)
  end

  test "should destroy compra" do
    assert_difference("Compra.count", -1) do
      delete compra_url(@compra)
    end

    assert_redirected_to compras_url
  end
end
