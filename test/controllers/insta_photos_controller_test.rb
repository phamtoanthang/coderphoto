require 'test_helper'

class InstaPhotosControllerTest < ActionController::TestCase
  setup do
    @insta_photo = insta_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insta_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insta_photo" do
    assert_difference('InstaPhoto.count') do
      post :create, insta_photo: { caption: @insta_photo.caption, likes_count: @insta_photo.likes_count, url: @insta_photo.url, username: @insta_photo.username }
    end

    assert_redirected_to insta_photo_path(assigns(:insta_photo))
  end

  test "should show insta_photo" do
    get :show, id: @insta_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insta_photo
    assert_response :success
  end

  test "should update insta_photo" do
    patch :update, id: @insta_photo, insta_photo: { caption: @insta_photo.caption, likes_count: @insta_photo.likes_count, url: @insta_photo.url, username: @insta_photo.username }
    assert_redirected_to insta_photo_path(assigns(:insta_photo))
  end

  test "should destroy insta_photo" do
    assert_difference('InstaPhoto.count', -1) do
      delete :destroy, id: @insta_photo
    end

    assert_redirected_to insta_photos_path
  end
end
