require 'test_helper'

class AssociateAttachmentsControllerTest < ActionController::TestCase
  setup do
    @associate_attachment = associate_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_attachment" do
    assert_difference('AssociateAttachment.count') do
      post :create, associate_attachment: { associate_id: @associate_attachment.associate_id, avatar: @associate_attachment.avatar }
    end

    assert_redirected_to associate_attachment_path(assigns(:associate_attachment))
  end

  test "should show associate_attachment" do
    get :show, id: @associate_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_attachment
    assert_response :success
  end

  test "should update associate_attachment" do
    patch :update, id: @associate_attachment, associate_attachment: { associate_id: @associate_attachment.associate_id, avatar: @associate_attachment.avatar }
    assert_redirected_to associate_attachment_path(assigns(:associate_attachment))
  end

  test "should destroy associate_attachment" do
    assert_difference('AssociateAttachment.count', -1) do
      delete :destroy, id: @associate_attachment
    end

    assert_redirected_to associate_attachments_path
  end
end
