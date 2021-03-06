require 'test_helper'

class OrderdetailsControllerTest < ActionController::TestCase
  setup do
    @orderdetail = orderdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orderdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orderdetail" do
    assert_difference('Orderdetail.count') do
      post :create, orderdetail: { amount: @orderdetail.amount, subtotal: @orderdetail.subtotal }
    end

    assert_redirected_to orderdetail_path(assigns(:orderdetail))
  end

  test "should show orderdetail" do
    get :show, id: @orderdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orderdetail
    assert_response :success
  end

  test "should update orderdetail" do
    patch :update, id: @orderdetail, orderdetail: { amount: @orderdetail.amount, subtotal: @orderdetail.subtotal }
    assert_redirected_to orderdetail_path(assigns(:orderdetail))
  end

  test "should destroy orderdetail" do
    assert_difference('Orderdetail.count', -1) do
      delete :destroy, id: @orderdetail
    end

    assert_redirected_to orderdetails_path
  end
end
