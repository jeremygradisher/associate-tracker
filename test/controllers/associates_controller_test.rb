require 'test_helper'

class AssociatesControllerTest < ActionController::TestCase
  setup do
    @associate = associates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate" do
    assert_difference('Associate.count') do
      post :create, associate: { active: @associate.active, address_business: @associate.address_business, address_home: @associate.address_home, birthday: @associate.birthday, ein_ss: @associate.ein_ss, email: @associate.email, email_personal: @associate.email_personal, family: @associate.family, name: @associate.name, notes: @associate.notes, phone_cell: @associate.phone_cell, phone_primary: @associate.phone_primary, position: @associate.position, project_history: @associate.project_history, working_locations: @associate.working_locations }
    end

    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should show associate" do
    get :show, id: @associate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate
    assert_response :success
  end

  test "should update associate" do
    patch :update, id: @associate, associate: { active: @associate.active, address_business: @associate.address_business, address_home: @associate.address_home, birthday: @associate.birthday, ein_ss: @associate.ein_ss, email: @associate.email, email_personal: @associate.email_personal, family: @associate.family, name: @associate.name, notes: @associate.notes, phone_cell: @associate.phone_cell, phone_primary: @associate.phone_primary, position: @associate.position, project_history: @associate.project_history, working_locations: @associate.working_locations }
    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should destroy associate" do
    assert_difference('Associate.count', -1) do
      delete :destroy, id: @associate
    end

    assert_redirected_to associates_path
  end
end
