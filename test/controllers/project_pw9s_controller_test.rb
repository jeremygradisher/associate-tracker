require 'test_helper'

class ProjectPw9sControllerTest < ActionController::TestCase
  setup do
    @project_pw9 = project_pw9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pw9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_pw9" do
    assert_difference('ProjectPw9.count') do
      post :create, project_pw9: { project_id: @project_pw9.project_id, pw9: @project_pw9.pw9 }
    end

    assert_redirected_to project_pw9_path(assigns(:project_pw9))
  end

  test "should show project_pw9" do
    get :show, id: @project_pw9
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_pw9
    assert_response :success
  end

  test "should update project_pw9" do
    patch :update, id: @project_pw9, project_pw9: { project_id: @project_pw9.project_id, pw9: @project_pw9.pw9 }
    assert_redirected_to project_pw9_path(assigns(:project_pw9))
  end

  test "should destroy project_pw9" do
    assert_difference('ProjectPw9.count', -1) do
      delete :destroy, id: @project_pw9
    end

    assert_redirected_to project_pw9s_path
  end
end
