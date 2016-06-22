require 'test_helper'

class ProjectPdocumentsControllerTest < ActionController::TestCase
  setup do
    @project_pdocument = project_pdocuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_pdocuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_pdocument" do
    assert_difference('ProjectPdocument.count') do
      post :create, project_pdocument: { pdocument: @project_pdocument.pdocument, project_id: @project_pdocument.project_id }
    end

    assert_redirected_to project_pdocument_path(assigns(:project_pdocument))
  end

  test "should show project_pdocument" do
    get :show, id: @project_pdocument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_pdocument
    assert_response :success
  end

  test "should update project_pdocument" do
    patch :update, id: @project_pdocument, project_pdocument: { pdocument: @project_pdocument.pdocument, project_id: @project_pdocument.project_id }
    assert_redirected_to project_pdocument_path(assigns(:project_pdocument))
  end

  test "should destroy project_pdocument" do
    assert_difference('ProjectPdocument.count', -1) do
      delete :destroy, id: @project_pdocument
    end

    assert_redirected_to project_pdocuments_path
  end
end
