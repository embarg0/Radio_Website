require 'spec_helper'

describe "hosts_shows/show" do
  before(:each) do
    @hosts_show = assign(:hosts_show, stub_model(HostsShow,
      :employee_number => 1,
      :show_number => 2,
      :host_start_year => 3,
      :host_start_month => "Host Start Month"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Host Start Month/)
  end
end
