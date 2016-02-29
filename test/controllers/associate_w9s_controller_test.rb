require 'test_helper'

class AssociateW9sControllerTest < ActionController::TestCase
  setup do
    @associate_w9 = associate_w9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_w9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_w9" do
    assert_difference('AssociateW9.count') do
      post :create, associate_w9: { associate_id: @associate_w9.associate_id, w9: @associate_w9.w9 }
    end

    assert_redirected_to associate_w9_path(assigns(:associate_w9))
  end

  test "should show associate_w9" do
    get :show, id: @associate_w9
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_w9
    assert_response :success
  end

  test "should update associate_w9" do
    patch :update, id: @associate_w9, associate_w9: { associate_id: @associate_w9.associate_id, w9: @associate_w9.w9 }
    assert_redirected_to associate_w9_path(assigns(:associate_w9))
  end

  test "should destroy associate_w9" do
    assert_difference('AssociateW9.count', -1) do
      delete :destroy, id: @associate_w9
    end

    assert_redirected_to associate_w9s_path
  end
end
