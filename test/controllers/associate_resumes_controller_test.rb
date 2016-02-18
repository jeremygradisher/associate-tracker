require 'test_helper'

class AssociateResumesControllerTest < ActionController::TestCase
  setup do
    @associate_resume = associate_resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_resumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_resume" do
    assert_difference('AssociateResume.count') do
      post :create, associate_resume: { associate_id: @associate_resume.associate_id, resume: @associate_resume.resume }
    end

    assert_redirected_to associate_resume_path(assigns(:associate_resume))
  end

  test "should show associate_resume" do
    get :show, id: @associate_resume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_resume
    assert_response :success
  end

  test "should update associate_resume" do
    patch :update, id: @associate_resume, associate_resume: { associate_id: @associate_resume.associate_id, resume: @associate_resume.resume }
    assert_redirected_to associate_resume_path(assigns(:associate_resume))
  end

  test "should destroy associate_resume" do
    assert_difference('AssociateResume.count', -1) do
      delete :destroy, id: @associate_resume
    end

    assert_redirected_to associate_resumes_path
  end
end
