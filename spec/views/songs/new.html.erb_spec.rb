require 'spec_helper'

describe "songs/new" do
  before(:each) do
    assign(:song, stub_model(Song,
      :title => "MyString",
      :cancon => false,
      :instrumental => false,
      :album_id => 1,
      :artist_id => 1
    ).as_new_record)
  end

  it "renders new song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", songs_path, "post" do
      assert_select "input#song_title[name=?]", "song[title]"
      assert_select "input#song_cancon[name=?]", "song[cancon]"
      assert_select "input#song_instrumental[name=?]", "song[instrumental]"
      assert_select "input#song_album_id[name=?]", "song[album_id]"
      assert_select "input#song_artist_id[name=?]", "song[artist_id]"
    end
  end
end
