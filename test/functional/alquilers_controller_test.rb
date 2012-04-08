require 'test_helper'

class AlquilersControllerTest < ActionController::TestCase
  setup do
    @alquiler = alquilers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alquilers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alquiler" do
    assert_difference('Alquiler.count') do
      post :create, alquiler: @alquiler.attributes
    end

    assert_redirected_to alquiler_path(assigns(:alquiler))
  end

  test "should show alquiler" do
    get :show, id: @alquiler.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alquiler.to_param
    assert_response :success
  end

  test "should update alquiler" do
    put :update, id: @alquiler.to_param, alquiler: @alquiler.attributes
    assert_redirected_to alquiler_path(assigns(:alquiler))
  end

  test "should destroy alquiler" do
    assert_difference('Alquiler.count', -1) do
      delete :destroy, id: @alquiler.to_param
    end

    assert_redirected_to alquilers_path
  end
end
