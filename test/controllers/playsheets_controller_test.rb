require 'test_helper'

class PlaysheetsControllerTest < ActionController::TestCase
  setup do
    @playsheet = playsheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playsheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playsheet" do
    assert_difference('Playsheet.count') do
      post :create, playsheet: { date: @playsheet.date, day_of_week: @playsheet.day_of_week }
    end

    assert_redirected_to playsheet_path(assigns(:playsheet))
  end

  test "should show playsheet" do
    get :show, id: @playsheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playsheet
    assert_response :success
  end

  test "should update playsheet" do
    patch :update, id: @playsheet, playsheet: { date: @playsheet.date, day_of_week: @playsheet.day_of_week }
    assert_redirected_to playsheet_path(assigns(:playsheet))
  end

  test "should destroy playsheet" do
    assert_difference('Playsheet.count', -1) do
      delete :destroy, id: @playsheet
    end

    assert_redirected_to playsheets_path
  end
end
