require 'test_helper'

class PublicidadsControllerTest < ActionController::TestCase
  setup do
    @publicidad = publicidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publicidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publicidad" do
    assert_difference('Publicidad.count') do
      post :create, publicidad: @publicidad.attributes
    end

    assert_redirected_to publicidad_path(assigns(:publicidad))
  end

  test "should show publicidad" do
    get :show, id: @publicidad.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publicidad.to_param
    assert_response :success
  end

  test "should update publicidad" do
    put :update, id: @publicidad.to_param, publicidad: @publicidad.attributes
    assert_redirected_to publicidad_path(assigns(:publicidad))
  end

  test "should destroy publicidad" do
    assert_difference('Publicidad.count', -1) do
      delete :destroy, id: @publicidad.to_param
    end

    assert_redirected_to publicidads_path
  end
end
