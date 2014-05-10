require 'test_helper'

class DataObjectsControllerTest < ActionController::TestCase
  setup do
    @data_object = data_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_object" do
    assert_difference('DataObject.count') do
      post :create, data_object: {  }
    end

    assert_redirected_to data_object_path(assigns(:data_object))
  end

  test "should show data_object" do
    get :show, id: @data_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_object
    assert_response :success
  end

  test "should update data_object" do
    patch :update, id: @data_object, data_object: {  }
    assert_redirected_to data_object_path(assigns(:data_object))
  end

  test "should destroy data_object" do
    assert_difference('DataObject.count', -1) do
      delete :destroy, id: @data_object
    end

    assert_redirected_to data_objects_path
  end
end
