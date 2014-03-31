require 'spec_helper'

describe "guests/new" do
  before(:each) do
    assign(:guest, stub_model(Guest,
      :last_name => "MyString",
      :description => "MyText",
      :topic => "MyString",
      :rating => 1,
      :timeslot_number => 1
    ).as_new_record)
  end

  it "renders new guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guests_path, "post" do
      assert_select "input#guest_last_name[name=?]", "guest[last_name]"
      assert_select "textarea#guest_description[name=?]", "guest[description]"
      assert_select "input#guest_topic[name=?]", "guest[topic]"
      assert_select "input#guest_rating[name=?]", "guest[rating]"
      assert_select "input#guest_timeslot_number[name=?]", "guest[timeslot_number]"
    end
  end
end
