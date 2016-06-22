require 'test_helper'

class ProjectPcontractsControllerTest < ActionController::TestCase
  setup do
    @project_pcontract = project_pcontracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pcontracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_pcontract" do
    assert_difference('ProjectPcontract.count') do
      post :create, project_pcontract: { pcontract: @project_pcontract.pcontract, project_id: @project_pcontract.project_id }
    end

    assert_redirected_to project_pcontract_path(assigns(:project_pcontract))
  end

  test "should show project_pcontract" do
    get :show, id: @project_pcontract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_pcontract
    assert_response :success
  end

  test "should update project_pcontract" do
    patch :update, id: @project_pcontract, project_pcontract: { pcontract: @project_pcontract.pcontract, project_id: @project_pcontract.project_id }
    assert_redirected_to project_pcontract_path(assigns(:project_pcontract))
  end

  test "should destroy project_pcontract" do
    assert_difference('ProjectPcontract.count', -1) do
      delete :destroy, id: @project_pcontract
    end

    assert_redirected_to project_pcontracts_path
  end
end
