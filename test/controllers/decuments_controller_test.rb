require 'test_helper'

class DecumentsControllerTest < ActionController::TestCase
  setup do
    @decument = decuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decument" do
    assert_difference('Decument.count') do
      post :create, decument: { description: @decument.description, file: @decument.file, subject: @decument.subject, title: @decument.title }
    end

    assert_redirected_to decument_path(assigns(:decument))
  end

  test "should show decument" do
    get :show, id: @decument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decument
    assert_response :success
  end

  test "should update decument" do
    patch :update, id: @decument, decument: { description: @decument.description, file: @decument.file, subject: @decument.subject, title: @decument.title }
    assert_redirected_to decument_path(assigns(:decument))
  end

  test "should destroy decument" do
    assert_difference('Decument.count', -1) do
      delete :destroy, id: @decument
    end

    assert_redirected_to decuments_path
  end
end
