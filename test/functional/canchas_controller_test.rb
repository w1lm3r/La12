require 'test_helper'

class CanchasControllerTest < ActionController::TestCase
  setup do
    @cancha = canchas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canchas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancha" do
    assert_difference('Cancha.count') do
      post :create, cancha: @cancha.attributes
    end

    assert_redirected_to cancha_path(assigns(:cancha))
  end

  test "should show cancha" do
    get :show, id: @cancha.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancha.to_param
    assert_response :success
  end

  test "should update cancha" do
    put :update, id: @cancha.to_param, cancha: @cancha.attributes
    assert_redirected_to cancha_path(assigns(:cancha))
  end

  test "should destroy cancha" do
    assert_difference('Cancha.count', -1) do
      delete :destroy, id: @cancha.to_param
    end

    assert_redirected_to canchas_path
  end
end
