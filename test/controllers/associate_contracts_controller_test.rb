require 'test_helper'

class AssociateContractsControllerTest < ActionController::TestCase
  setup do
    @associate_contract = associate_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_contract" do
    assert_difference('AssociateContract.count') do
      post :create, associate_contract: { associate_id: @associate_contract.associate_id, contract: @associate_contract.contract }
    end

    assert_redirected_to associate_contract_path(assigns(:associate_contract))
  end

  test "should show associate_contract" do
    get :show, id: @associate_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_contract
    assert_response :success
  end

  test "should update associate_contract" do
    patch :update, id: @associate_contract, associate_contract: { associate_id: @associate_contract.associate_id, contract: @associate_contract.contract }
    assert_redirected_to associate_contract_path(assigns(:associate_contract))
  end

  test "should destroy associate_contract" do
    assert_difference('AssociateContract.count', -1) do
      delete :destroy, id: @associate_contract
    end

    assert_redirected_to associate_contracts_path
  end
end
