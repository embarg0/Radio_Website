require 'spec_helper'

describe "hosts_shows/new" do
  before(:each) do
    assign(:hosts_show, stub_model(HostsShow,
      :employee_number => 1,
      :show_number => 1,
      :host_start_year => 1,
      :host_start_month => "MyString"
    ).as_new_record)
  end

  it "renders new hosts_show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hosts_shows_path, "post" do
      assert_select "input#hosts_show_employee_number[name=?]", "hosts_show[employee_number]"
      assert_select "input#hosts_show_show_number[name=?]", "hosts_show[show_number]"
      assert_select "input#hosts_show_host_start_year[name=?]", "hosts_show[host_start_year]"
      assert_select "input#hosts_show_host_start_month[name=?]", "hosts_show[host_start_month]"
    end
  end
end
