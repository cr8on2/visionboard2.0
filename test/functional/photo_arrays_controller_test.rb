require 'test_helper'

class PhotoArraysControllerTest < ActionController::TestCase
  setup do
    @photo_array = photo_arrays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_arrays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_array" do
    assert_difference('PhotoArray.count') do
      post :create, photo_array: { photograph_id: @photo_array.photograph_id, slideshow_id: @photo_array.slideshow_id }
    end

    assert_redirected_to photo_array_path(assigns(:photo_array))
  end

  test "should show photo_array" do
    get :show, id: @photo_array
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_array
    assert_response :success
  end

  test "should update photo_array" do
    put :update, id: @photo_array, photo_array: { photograph_id: @photo_array.photograph_id, slideshow_id: @photo_array.slideshow_id }
    assert_redirected_to photo_array_path(assigns(:photo_array))
  end

  test "should destroy photo_array" do
    assert_difference('PhotoArray.count', -1) do
      delete :destroy, id: @photo_array
    end

    assert_redirected_to photo_arrays_path
  end
end
