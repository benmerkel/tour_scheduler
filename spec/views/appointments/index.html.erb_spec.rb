require 'rails_helper'

RSpec.describe "appointments/index", :type => :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :parent_names => "Parent Names",
        :phone_numbers => "Phone Numbers",
        :email_addresses => "Email Addresses",
        :children_names => "Children Names",
        :children_ages => "Children Ages",
        :other_info => "MyText"
      ),
      Appointment.create!(
        :parent_names => "Parent Names",
        :phone_numbers => "Phone Numbers",
        :email_addresses => "Email Addresses",
        :children_names => "Children Names",
        :children_ages => "Children Ages",
        :other_info => "MyText"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Parent Names".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Numbers".to_s, :count => 2
    assert_select "tr>td", :text => "Email Addresses".to_s, :count => 2
    assert_select "tr>td", :text => "Children Names".to_s, :count => 2
    assert_select "tr>td", :text => "Children Ages".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
