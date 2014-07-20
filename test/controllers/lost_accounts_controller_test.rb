require 'test_helper'

class LostAccountsControllerTest < ActionController::TestCase
  setup do
    @lost_account = lost_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lost_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lost_account" do
    assert_difference('LostAccount.count') do
      post :create, lost_account: { identifier: @lost_account.identifier }
    end

    assert_redirected_to lost_account_path(assigns(:lost_account))
  end

  test "should show lost_account" do
    get :show, id: @lost_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lost_account
    assert_response :success
  end

  test "should update lost_account" do
    patch :update, id: @lost_account, lost_account: { identifier: @lost_account.identifier }
    assert_redirected_to lost_account_path(assigns(:lost_account))
  end

  test "should destroy lost_account" do
    assert_difference('LostAccount.count', -1) do
      delete :destroy, id: @lost_account
    end

    assert_redirected_to lost_accounts_path
  end
end
