require 'test_helper'

class HostsControllerTest < ActionController::TestCase
  setup do
    @host = hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host" do
    assert_difference('Host.count') do
      post :create, host: { contract_end_date: @host.contract_end_date, contract_start_date: @host.contract_start_date, date_of_birth: @host.date_of_birth, first_name: @host.first_name, last_name: @host.last_name, rating: @host.rating, salary: @host.salary, stage_name: @host.stage_name }
    end

    assert_redirected_to host_path(assigns(:host))
  end

  test "should show host" do
    get :show, id: @host
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host
    assert_response :success
  end

  test "should update host" do
    patch :update, id: @host, host: { contract_end_date: @host.contract_end_date, contract_start_date: @host.contract_start_date, date_of_birth: @host.date_of_birth, first_name: @host.first_name, last_name: @host.last_name, rating: @host.rating, salary: @host.salary, stage_name: @host.stage_name }
    assert_redirected_to host_path(assigns(:host))
  end

  test "should destroy host" do
    assert_difference('Host.count', -1) do
      delete :destroy, id: @host
    end

    assert_redirected_to hosts_path
  end
end
