require 'test_helper'

class ProjectPrevcontractsControllerTest < ActionController::TestCase
  setup do
    @project_prevcontract = project_prevcontracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_prevcontracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_prevcontract" do
    assert_difference('ProjectPrevcontract.count') do
      post :create, project_prevcontract: { prevcontract: @project_prevcontract.prevcontract, project_id: @project_prevcontract.project_id }
    end

    assert_redirected_to project_prevcontract_path(assigns(:project_prevcontract))
  end

  test "should show project_prevcontract" do
    get :show, id: @project_prevcontract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_prevcontract
    assert_response :success
  end

  test "should update project_prevcontract" do
    patch :update, id: @project_prevcontract, project_prevcontract: { prevcontract: @project_prevcontract.prevcontract, project_id: @project_prevcontract.project_id }
    assert_redirected_to project_prevcontract_path(assigns(:project_prevcontract))
  end

  test "should destroy project_prevcontract" do
    assert_difference('ProjectPrevcontract.count', -1) do
      delete :destroy, id: @project_prevcontract
    end

    assert_redirected_to project_prevcontracts_path
  end
end
