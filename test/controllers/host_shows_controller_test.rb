require 'test_helper'

class HostShowsControllerTest < ActionController::TestCase
  setup do
    @host_show = host_shows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_show" do
    assert_difference('HostShow.count') do
      post :create, host_show: { hostStartMonth: @host_show.hostStartMonth, hostStartYear: @host_show.hostStartYear }
    end

    assert_redirected_to host_show_path(assigns(:host_show))
  end

  test "should show host_show" do
    get :show, id: @host_show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host_show
    assert_response :success
  end

  test "should update host_show" do
    patch :update, id: @host_show, host_show: { hostStartMonth: @host_show.hostStartMonth, hostStartYear: @host_show.hostStartYear }
    assert_redirected_to host_show_path(assigns(:host_show))
  end

  test "should destroy host_show" do
    assert_difference('HostShow.count', -1) do
      delete :destroy, id: @host_show
    end

    assert_redirected_to host_shows_path
  end
end
