require 'test_helper'

class SongInventoriesControllerTest < ActionController::TestCase
  setup do
    @song_inventory = song_inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_inventory" do
    assert_difference('SongInventory.count') do
      post :create, song_inventory: { albumID: @song_inventory.albumID, artistiID: @song_inventory.artistiID, cancon: @song_inventory.cancon, instrumental: @song_inventory.instrumental, songID: @song_inventory.songID, title: @song_inventory.title }
    end

    assert_redirected_to song_inventory_path(assigns(:song_inventory))
  end

  test "should show song_inventory" do
    get :show, id: @song_inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_inventory
    assert_response :success
  end

  test "should update song_inventory" do
    patch :update, id: @song_inventory, song_inventory: { albumID: @song_inventory.albumID, artistiID: @song_inventory.artistiID, cancon: @song_inventory.cancon, instrumental: @song_inventory.instrumental, songID: @song_inventory.songID, title: @song_inventory.title }
    assert_redirected_to song_inventory_path(assigns(:song_inventory))
  end

  test "should destroy song_inventory" do
    assert_difference('SongInventory.count', -1) do
      delete :destroy, id: @song_inventory
    end

    assert_redirected_to song_inventories_path
  end
end
