require 'test_helper'

class DepoeventosControllerTest < ActionController::TestCase
  setup do
    @depoevento = depoeventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:depoeventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create depoevento" do
    assert_difference('Depoevento.count') do
      post :create, depoevento: @depoevento.attributes
    end

    assert_redirected_to depoevento_path(assigns(:depoevento))
  end

  test "should show depoevento" do
    get :show, id: @depoevento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @depoevento.to_param
    assert_response :success
  end

  test "should update depoevento" do
    put :update, id: @depoevento.to_param, depoevento: @depoevento.attributes
    assert_redirected_to depoevento_path(assigns(:depoevento))
  end

  test "should destroy depoevento" do
    assert_difference('Depoevento.count', -1) do
      delete :destroy, id: @depoevento.to_param
    end

    assert_redirected_to depoeventos_path
  end
end
