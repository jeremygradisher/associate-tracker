require 'test_helper'

class ProjectPproposalsControllerTest < ActionController::TestCase
  setup do
    @project_pproposal = project_pproposals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pproposals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_pproposal" do
    assert_difference('ProjectPproposal.count') do
      post :create, project_pproposal: { pproposal: @project_pproposal.pproposal, project_id: @project_pproposal.project_id }
    end

    assert_redirected_to project_pproposal_path(assigns(:project_pproposal))
  end

  test "should show project_pproposal" do
    get :show, id: @project_pproposal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_pproposal
    assert_response :success
  end

  test "should update project_pproposal" do
    patch :update, id: @project_pproposal, project_pproposal: { pproposal: @project_pproposal.pproposal, project_id: @project_pproposal.project_id }
    assert_redirected_to project_pproposal_path(assigns(:project_pproposal))
  end

  test "should destroy project_pproposal" do
    assert_difference('ProjectPproposal.count', -1) do
      delete :destroy, id: @project_pproposal
    end

    assert_redirected_to project_pproposals_path
  end
end
