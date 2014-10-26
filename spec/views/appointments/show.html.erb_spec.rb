require 'rails_helper'

RSpec.describe "appointments/show", :type => :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :parent_names => "Parent Names",
      :phone_numbers => "Phone Numbers",
      :email_addresses => "Email Addresses",
      :children_names => "Children Names",
      :children_ages => "Children Ages",
      :other_info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Parent Names/)
    expect(rendered).to match(/Phone Numbers/)
    expect(rendered).to match(/Email Addresses/)
    expect(rendered).to match(/Children Names/)
    expect(rendered).to match(/Children Ages/)
    expect(rendered).to match(/MyText/)
  end
end
