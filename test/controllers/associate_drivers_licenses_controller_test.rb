require 'test_helper'

class AssociateDriversLicensesControllerTest < ActionController::TestCase
  setup do
    @associate_drivers_license = associate_drivers_licenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_drivers_licenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_drivers_license" do
    assert_difference('AssociateDriversLicense.count') do
      post :create, associate_drivers_license: { associate_id: @associate_drivers_license.associate_id, drivers_license: @associate_drivers_license.drivers_license }
    end

    assert_redirected_to associate_drivers_license_path(assigns(:associate_drivers_license))
  end

  test "should show associate_drivers_license" do
    get :show, id: @associate_drivers_license
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_drivers_license
    assert_response :success
  end

  test "should update associate_drivers_license" do
    patch :update, id: @associate_drivers_license, associate_drivers_license: { associate_id: @associate_drivers_license.associate_id, drivers_license: @associate_drivers_license.drivers_license }
    assert_redirected_to associate_drivers_license_path(assigns(:associate_drivers_license))
  end

  test "should destroy associate_drivers_license" do
    assert_difference('AssociateDriversLicense.count', -1) do
      delete :destroy, id: @associate_drivers_license
    end

    assert_redirected_to associate_drivers_licenses_path
  end
end
