require 'test_helper'

class SoundtracksControllerTest < ActionController::TestCase
  setup do
    @soundtrack = soundtracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soundtracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soundtrack" do
    assert_difference('Soundtrack.count') do
      post :create, soundtrack: { slideshow_id: @soundtrack.slideshow_id, song_id: @soundtrack.song_id }
    end

    assert_redirected_to soundtrack_path(assigns(:soundtrack))
  end

  test "should show soundtrack" do
    get :show, id: @soundtrack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soundtrack
    assert_response :success
  end

  test "should update soundtrack" do
    put :update, id: @soundtrack, soundtrack: { slideshow_id: @soundtrack.slideshow_id, song_id: @soundtrack.song_id }
    assert_redirected_to soundtrack_path(assigns(:soundtrack))
  end

  test "should destroy soundtrack" do
    assert_difference('Soundtrack.count', -1) do
      delete :destroy, id: @soundtrack
    end

    assert_redirected_to soundtracks_path
  end
end
