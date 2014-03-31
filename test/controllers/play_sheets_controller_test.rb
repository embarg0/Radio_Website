require 'test_helper'

class PlaySheetsControllerTest < ActionController::TestCase
  setup do
    @play_sheet = play_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:play_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play_sheet" do
    assert_difference('PlaySheet.count') do
      post :create, play_sheet: { date: @play_sheet.date, dateOfWeek: @play_sheet.dateOfWeek, playSheetNum: @play_sheet.playSheetNum }
    end

    assert_redirected_to play_sheet_path(assigns(:play_sheet))
  end

  test "should show play_sheet" do
    get :show, id: @play_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play_sheet
    assert_response :success
  end

  test "should update play_sheet" do
    patch :update, id: @play_sheet, play_sheet: { date: @play_sheet.date, dateOfWeek: @play_sheet.dateOfWeek, playSheetNum: @play_sheet.playSheetNum }
    assert_redirected_to play_sheet_path(assigns(:play_sheet))
  end

  test "should destroy play_sheet" do
    assert_difference('PlaySheet.count', -1) do
      delete :destroy, id: @play_sheet
    end

    assert_redirected_to play_sheets_path
  end
end
