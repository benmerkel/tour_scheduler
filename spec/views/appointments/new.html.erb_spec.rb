require 'rails_helper'

RSpec.describe "appointments/new", :type => :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :parent_names => "MyString",
      :phone_numbers => "MyString",
      :email_addresses => "MyString",
      :children_names => "MyString",
      :children_ages => "MyString",
      :other_info => "MyText"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input#appointment_parent_names[name=?]", "appointment[parent_names]"

      assert_select "input#appointment_phone_numbers[name=?]", "appointment[phone_numbers]"

      assert_select "input#appointment_email_addresses[name=?]", "appointment[email_addresses]"

      assert_select "input#appointment_children_names[name=?]", "appointment[children_names]"

      assert_select "input#appointment_children_ages[name=?]", "appointment[children_ages]"

      assert_select "textarea#appointment_other_info[name=?]", "appointment[other_info]"
    end
  end
end
