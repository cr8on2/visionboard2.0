require 'test_helper'

class PhotoLibrariesControllerTest < ActionController::TestCase
  setup do
    @photo_library = photo_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_library" do
    assert_difference('PhotoLibrary.count') do
      post :create, photo_library: { photograph_id: @photo_library.photograph_id, user_id: @photo_library.user_id }
    end

    assert_redirected_to photo_library_path(assigns(:photo_library))
  end

  test "should show photo_library" do
    get :show, id: @photo_library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_library
    assert_response :success
  end

  test "should update photo_library" do
    put :update, id: @photo_library, photo_library: { photograph_id: @photo_library.photograph_id, user_id: @photo_library.user_id }
    assert_redirected_to photo_library_path(assigns(:photo_library))
  end

  test "should destroy photo_library" do
    assert_difference('PhotoLibrary.count', -1) do
      delete :destroy, id: @photo_library
    end

    assert_redirected_to photo_libraries_path
  end
end
