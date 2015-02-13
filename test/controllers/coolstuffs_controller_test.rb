require 'test_helper'

class CoolstuffsControllerTest < ActionController::TestCase
  setup do
    @coolstuff = coolstuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coolstuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coolstuff" do
    assert_difference('Coolstuff.count') do
      post :create, coolstuff: {  }
    end

    assert_redirected_to coolstuff_path(assigns(:coolstuff))
  end

  test "should show coolstuff" do
    get :show, id: @coolstuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coolstuff
    assert_response :success
  end

  test "should update coolstuff" do
    patch :update, id: @coolstuff, coolstuff: {  }
    assert_redirected_to coolstuff_path(assigns(:coolstuff))
  end

  test "should destroy coolstuff" do
    assert_difference('Coolstuff.count', -1) do
      delete :destroy, id: @coolstuff
    end

    assert_redirected_to coolstuffs_path
  end
end
