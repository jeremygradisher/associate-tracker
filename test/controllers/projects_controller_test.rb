require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { additional_terms: @project.additional_terms, brief_description: @project.brief_description, deal_terms: @project.deal_terms, latitude: @project.latitude, longitude: @project.longitude, name: @project.name, project_city: @project.project_city, project_duration: @project.project_duration, project_state: @project.project_state, project_street: @project.project_street, project_zip: @project.project_zip, rate: @project.rate, services: @project.services, staffing_notes: @project.staffing_notes }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { additional_terms: @project.additional_terms, brief_description: @project.brief_description, deal_terms: @project.deal_terms, latitude: @project.latitude, longitude: @project.longitude, name: @project.name, project_city: @project.project_city, project_duration: @project.project_duration, project_state: @project.project_state, project_street: @project.project_street, project_zip: @project.project_zip, rate: @project.rate, services: @project.services, staffing_notes: @project.staffing_notes }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
