require 'spec_helper'

describe "guests/show" do
  before(:each) do
    @guest = assign(:guest, stub_model(Guest,
      :last_name => "Last Name",
      :description => "MyText",
      :topic => "Topic",
      :rating => 1,
      :timeslot_number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Topic/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
