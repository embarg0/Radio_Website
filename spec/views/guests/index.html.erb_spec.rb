require 'spec_helper'

describe "guests/index" do
  before(:each) do
    assign(:guests, [
      stub_model(Guest,
        :last_name => "Last Name",
        :description => "MyText",
        :topic => "Topic",
        :rating => 1,
        :timeslot_number => 2
      ),
      stub_model(Guest,
        :last_name => "Last Name",
        :description => "MyText",
        :topic => "Topic",
        :rating => 1,
        :timeslot_number => 2
      )
    ])
  end

  it "renders a list of guests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
