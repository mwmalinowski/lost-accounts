require 'test_helper'

class TracingsControllerTest < ActionController::TestCase
  setup do
    @tracing = tracings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tracing" do
    assert_difference('Tracing.count') do
      post :create, tracing: { add1: @tracing.add1, add2: @tracing.add2, add3: @tracing.add3, add4: @tracing.add4, city: @tracing.city, contract: @tracing.contract, description: @tracing.description, dist_id: @tracing.dist_id, ext_amnt: @tracing.ext_amnt, inside: @tracing.inside, inv_date: @tracing.inv_date, prod_no: @tracing.prod_no, prod_type: @tracing.prod_type, qty: @tracing.qty, record_id: @tracing.record_id, shipto: @tracing.shipto, sklar_id: @tracing.sklar_id, st: @tracing.st }
    end

    assert_redirected_to tracing_path(assigns(:tracing))
  end

  test "should show tracing" do
    get :show, id: @tracing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tracing
    assert_response :success
  end

  test "should update tracing" do
    patch :update, id: @tracing, tracing: { add1: @tracing.add1, add2: @tracing.add2, add3: @tracing.add3, add4: @tracing.add4, city: @tracing.city, contract: @tracing.contract, description: @tracing.description, dist_id: @tracing.dist_id, ext_amnt: @tracing.ext_amnt, inside: @tracing.inside, inv_date: @tracing.inv_date, prod_no: @tracing.prod_no, prod_type: @tracing.prod_type, qty: @tracing.qty, record_id: @tracing.record_id, shipto: @tracing.shipto, sklar_id: @tracing.sklar_id, st: @tracing.st }
    assert_redirected_to tracing_path(assigns(:tracing))
  end

  test "should destroy tracing" do
    assert_difference('Tracing.count', -1) do
      delete :destroy, id: @tracing
    end

    assert_redirected_to tracings_path
  end
end
