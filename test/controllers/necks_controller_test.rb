require 'test_helper'

class NecksControllerTest < ActionController::TestCase
  setup do
    @neck = necks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:necks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neck" do
    assert_difference('Neck.count') do
      post :create, neck: { description: @neck.description }
    end

    assert_redirected_to neck_path(assigns(:neck))
  end

  test "should show neck" do
    get :show, id: @neck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neck
    assert_response :success
  end

  test "should update neck" do
    patch :update, id: @neck, neck: { description: @neck.description }
    assert_redirected_to neck_path(assigns(:neck))
  end

  test "should destroy neck" do
    assert_difference('Neck.count', -1) do
      delete :destroy, id: @neck
    end

    assert_redirected_to necks_path
  end
end
