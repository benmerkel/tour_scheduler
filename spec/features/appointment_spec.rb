require 'rspec'
require './spec/rails_helper'

describe Appointment do

  it 'should be an appointment' do
    expect(subject).to be_a(Appointment)
  end
end

feature 'Scheduling a new tour' do
  scenario 'a parent is scheduling a tour' do
    parent_names = FactoryGirl.create(:student, instructor: true)
    student = FactoryGirl.attributes_for(:student)
    course = FactoryGirl.create(:course)

    login(instructor)

    click_link 'My Courses'

    within("#course_#{course.id}") do
      click_link 'Show'
    end

    fill_in 'Email', with: student[:email]

    click_button 'Invite new student'

    expect(ActionMailer::Base.deliveries).to have(1).email
    expect(page).to have_text("#{student[:email]} invited")

    click_link 'Logout'

    invite = Invite.where(email: student[:email]).first
    visit new_student_path(invite_code: invite.code)

    fill_in 'First name', with: student[:first_name]
    fill_in 'Last name', with: student[:last_name]
    fill_in 'Password', with: student[:password]
    fill_in 'Password confirmation', with: student[:password_confirmation]

    click_button 'Signup'

    expect(page).to have_text("Thanks for signing up #{student[:first_name].titleize}")

    click_link 'Logout'

    login(instructor)

    click_link 'My Courses'

    within("#course_#{course.id}") do
      click_link 'Show'
    end
