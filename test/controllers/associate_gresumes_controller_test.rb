require 'test_helper'

class AssociateGresumesControllerTest < ActionController::TestCase
  setup do
    @associate_gresume = associate_gresumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_gresumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_gresume" do
    assert_difference('AssociateGresume.count') do
      post :create, associate_gresume: { associate_id: @associate_gresume.associate_id, gresume: @associate_gresume.gresume }
    end

    assert_redirected_to associate_gresume_path(assigns(:associate_gresume))
  end

  test "should show associate_gresume" do
    get :show, id: @associate_gresume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_gresume
    assert_response :success
  end

  test "should update associate_gresume" do
    patch :update, id: @associate_gresume, associate_gresume: { associate_id: @associate_gresume.associate_id, gresume: @associate_gresume.gresume }
    assert_redirected_to associate_gresume_path(assigns(:associate_gresume))
  end

  test "should destroy associate_gresume" do
    assert_difference('AssociateGresume.count', -1) do
      delete :destroy, id: @associate_gresume
    end

    assert_redirected_to associate_gresumes_path
  end
end
