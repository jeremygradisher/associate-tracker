require 'test_helper'

class ProjectInvoicesControllerTest < ActionController::TestCase
  setup do
    @project_invoice = project_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_invoice" do
    assert_difference('ProjectInvoice.count') do
      post :create, project_invoice: { invoice: @project_invoice.invoice, project_id: @project_invoice.project_id }
    end

    assert_redirected_to project_invoice_path(assigns(:project_invoice))
  end

  test "should show project_invoice" do
    get :show, id: @project_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_invoice
    assert_response :success
  end

  test "should update project_invoice" do
    patch :update, id: @project_invoice, project_invoice: { invoice: @project_invoice.invoice, project_id: @project_invoice.project_id }
    assert_redirected_to project_invoice_path(assigns(:project_invoice))
  end

  test "should destroy project_invoice" do
    assert_difference('ProjectInvoice.count', -1) do
      delete :destroy, id: @project_invoice
    end

    assert_redirected_to project_invoices_path
  end
end
