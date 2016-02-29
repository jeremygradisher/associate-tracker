require 'test_helper'

class AssociateDriversInsurancesControllerTest < ActionController::TestCase
  setup do
    @associate_drivers_insurance = associate_drivers_insurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associate_drivers_insurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate_drivers_insurance" do
    assert_difference('AssociateDriversInsurance.count') do
      post :create, associate_drivers_insurance: { associate_id: @associate_drivers_insurance.associate_id, drivers_insurance: @associate_drivers_insurance.drivers_insurance }
    end

    assert_redirected_to associate_drivers_insurance_path(assigns(:associate_drivers_insurance))
  end

  test "should show associate_drivers_insurance" do
    get :show, id: @associate_drivers_insurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate_drivers_insurance
    assert_response :success
  end

  test "should update associate_drivers_insurance" do
    patch :update, id: @associate_drivers_insurance, associate_drivers_insurance: { associate_id: @associate_drivers_insurance.associate_id, drivers_insurance: @associate_drivers_insurance.drivers_insurance }
    assert_redirected_to associate_drivers_insurance_path(assigns(:associate_drivers_insurance))
  end

  test "should destroy associate_drivers_insurance" do
    assert_difference('AssociateDriversInsurance.count', -1) do
      delete :destroy, id: @associate_drivers_insurance
    end

    assert_redirected_to associate_drivers_insurances_path
  end
end
