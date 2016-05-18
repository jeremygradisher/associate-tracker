require 'test_helper'

class ProjectPiconsControllerTest < ActionController::TestCase
  setup do
    @project_picon = project_picons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_picons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_picon" do
    assert_difference('ProjectPicon.count') do
      post :create, project_picon: { picon: @project_picon.picon, project_id: @project_picon.project_id }
    end

    assert_redirected_to project_picon_path(assigns(:project_picon))
  end

  test "should show project_picon" do
    get :show, id: @project_picon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_picon
    assert_response :success
  end

  test "should update project_picon" do
    patch :update, id: @project_picon, project_picon: { picon: @project_picon.picon, project_id: @project_picon.project_id }
    assert_redirected_to project_picon_path(assigns(:project_picon))
  end

  test "should destroy project_picon" do
    assert_difference('ProjectPicon.count', -1) do
      delete :destroy, id: @project_picon
    end

    assert_redirected_to project_picons_path
  end
end
