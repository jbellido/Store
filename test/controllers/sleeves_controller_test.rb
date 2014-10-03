require 'test_helper'

class SleevesControllerTest < ActionController::TestCase
  setup do
    @sleefe = sleeves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sleeves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sleefe" do
    assert_difference('Sleeve.count') do
      post :create, sleefe: { description: @sleefe.description }
    end

    assert_redirected_to sleefe_path(assigns(:sleefe))
  end

  test "should show sleefe" do
    get :show, id: @sleefe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sleefe
    assert_response :success
  end

  test "should update sleefe" do
    patch :update, id: @sleefe, sleefe: { description: @sleefe.description }
    assert_redirected_to sleefe_path(assigns(:sleefe))
  end

  test "should destroy sleefe" do
    assert_difference('Sleeve.count', -1) do
      delete :destroy, id: @sleefe
    end

    assert_redirected_to sleeves_path
  end
end
