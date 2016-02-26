require 'test_helper'

class WrklocsControllerTest < ActionController::TestCase
  setup do
    @wrkloc = wrklocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wrklocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wrkloc" do
    assert_difference('Wrkloc.count') do
      post :create, wrkloc: { wrkstate: @wrkloc.wrkstate }
    end

    assert_redirected_to wrkloc_path(assigns(:wrkloc))
  end

  test "should show wrkloc" do
    get :show, id: @wrkloc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wrkloc
    assert_response :success
  end

  test "should update wrkloc" do
    patch :update, id: @wrkloc, wrkloc: { wrkstate: @wrkloc.wrkstate }
    assert_redirected_to wrkloc_path(assigns(:wrkloc))
  end

  test "should destroy wrkloc" do
    assert_difference('Wrkloc.count', -1) do
      delete :destroy, id: @wrkloc
    end

    assert_redirected_to wrklocs_path
  end
end
