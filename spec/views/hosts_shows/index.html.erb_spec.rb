require 'spec_helper'

describe "hosts_shows/index" do
  before(:each) do
    assign(:hosts_shows, [
      stub_model(HostsShow,
        :employee_number => 1,
        :show_number => 2,
        :host_start_year => 3,
        :host_start_month => "Host Start Month"
      ),
      stub_model(HostsShow,
        :employee_number => 1,
        :show_number => 2,
        :host_start_year => 3,
        :host_start_month => "Host Start Month"
      )
    ])
  end

  it "renders a list of hosts_shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Host Start Month".to_s, :count => 2
  end
end
