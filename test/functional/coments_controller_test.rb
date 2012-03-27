require 'test_helper'

class ComentsControllerTest < ActionController::TestCase
  setup do
    @coment = coments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coment" do
    assert_difference('Coment.count') do
      post :create, coment: @coment.attributes
    end

    assert_redirected_to coment_path(assigns(:coment))
  end

  test "should show coment" do
    get :show, id: @coment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coment.to_param
    assert_response :success
  end

  test "should update coment" do
    put :update, id: @coment.to_param, coment: @coment.attributes
    assert_redirected_to coment_path(assigns(:coment))
  end

  test "should destroy coment" do
    assert_difference('Coment.count', -1) do
      delete :destroy, id: @coment.to_param
    end

    assert_redirected_to coments_path
  end
end
