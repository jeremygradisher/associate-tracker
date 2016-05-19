require 'test_helper'

class ProjectCiconsControllerTest < ActionController::TestCase
  setup do
    @project_cicon = project_cicons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_cicons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_cicon" do
    assert_difference('ProjectCicon.count') do
      post :create, project_cicon: { cicon: @project_cicon.cicon, project_id: @project_cicon.project_id }
    end

    assert_redirected_to project_cicon_path(assigns(:project_cicon))
  end

  test "should show project_cicon" do
    get :show, id: @project_cicon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_cicon
    assert_response :success
  end

  test "should update project_cicon" do
    patch :update, id: @project_cicon, project_cicon: { cicon: @project_cicon.cicon, project_id: @project_cicon.project_id }
    assert_redirected_to project_cicon_path(assigns(:project_cicon))
  end

  test "should destroy project_cicon" do
    assert_difference('ProjectCicon.count', -1) do
      delete :destroy, id: @project_cicon
    end

    assert_redirected_to project_cicons_path
  end
end
