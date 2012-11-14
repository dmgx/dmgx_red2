require 'test_helper'

class PunchTypesControllerTest < ActionController::TestCase
  setup do
    @punch_type = punch_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punch_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punch_type" do
    assert_difference('PunchType.count') do
      post :create, punch_type: { name: @punch_type.name, punch_id: @punch_type.punch_id }
    end

    assert_redirected_to punch_type_path(assigns(:punch_type))
  end

  test "should show punch_type" do
    get :show, id: @punch_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punch_type
    assert_response :success
  end

  test "should update punch_type" do
    put :update, id: @punch_type, punch_type: { name: @punch_type.name, punch_id: @punch_type.punch_id }
    assert_redirected_to punch_type_path(assigns(:punch_type))
  end

  test "should destroy punch_type" do
    assert_difference('PunchType.count', -1) do
      delete :destroy, id: @punch_type
    end

    assert_redirected_to punch_types_path
  end
end
