require 'test_helper'

class SalesRepsControllerTest < ActionController::TestCase
  setup do
    @sales_rep = sales_reps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_reps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_rep" do
    assert_difference('SalesRep.count') do
      post :create, sales_rep: { name: @sales_rep.name }
    end

    assert_redirected_to sales_rep_path(assigns(:sales_rep))
  end

  test "should show sales_rep" do
    get :show, id: @sales_rep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_rep
    assert_response :success
  end

  test "should update sales_rep" do
    patch :update, id: @sales_rep, sales_rep: { name: @sales_rep.name }
    assert_redirected_to sales_rep_path(assigns(:sales_rep))
  end

  test "should destroy sales_rep" do
    assert_difference('SalesRep.count', -1) do
      delete :destroy, id: @sales_rep
    end

    assert_redirected_to sales_reps_path
  end
end
