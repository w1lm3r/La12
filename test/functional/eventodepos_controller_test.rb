require 'test_helper'

class EventodeposControllerTest < ActionController::TestCase
  setup do
    @eventodepo = eventodepos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventodepos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventodepo" do
    assert_difference('Eventodepo.count') do
      post :create, eventodepo: @eventodepo.attributes
    end

    assert_redirected_to eventodepo_path(assigns(:eventodepo))
  end

  test "should show eventodepo" do
    get :show, id: @eventodepo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventodepo.to_param
    assert_response :success
  end

  test "should update eventodepo" do
    put :update, id: @eventodepo.to_param, eventodepo: @eventodepo.attributes
    assert_redirected_to eventodepo_path(assigns(:eventodepo))
  end

  test "should destroy eventodepo" do
    assert_difference('Eventodepo.count', -1) do
      delete :destroy, id: @eventodepo.to_param
    end

    assert_redirected_to eventodepos_path
  end
end
