require 'test_helper'

class AssociateDirectDepositsControllerTest < ActionController::TestCase
  setup do
    @associate_direct_deposit = associate_direct_deposits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_direct_deposits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_direct_deposit" do
    assert_difference('AssociateDirectDeposit.count') do
      post :create, associate_direct_deposit: { associate_id: @associate_direct_deposit.associate_id, direct_deposit: @associate_direct_deposit.direct_deposit }
    end

    assert_redirected_to associate_direct_deposit_path(assigns(:associate_direct_deposit))
  end

  test "should show associate_direct_deposit" do
    get :show, id: @associate_direct_deposit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_direct_deposit
    assert_response :success
  end

  test "should update associate_direct_deposit" do
    patch :update, id: @associate_direct_deposit, associate_direct_deposit: { associate_id: @associate_direct_deposit.associate_id, direct_deposit: @associate_direct_deposit.direct_deposit }
    assert_redirected_to associate_direct_deposit_path(assigns(:associate_direct_deposit))
  end

  test "should destroy associate_direct_deposit" do
    assert_difference('AssociateDirectDeposit.count', -1) do
      delete :destroy, id: @associate_direct_deposit
    end

    assert_redirected_to associate_direct_deposits_path
  end
end
