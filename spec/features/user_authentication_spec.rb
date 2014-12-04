require 'rspec'
require 'rails_helper'

feature 'User Authentication' do

  scenario 'allows an existing user to log in' do
    visit '/'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email', with: 'kelly@bluemountainmontessori.com'
    fill_in 'Password', with: 'bunghole'

    click_button 'Login'
    expect(page).to have_text("Welcome back #{user.first_name.titleize}.")
    expect(page).to have_text("Signed in as #{user.email}")
  end

  scenario 'allows a user to be created' do
    visit '/'

    click_link('Login')

    fill_in 'Email', with: 'kelly@bluemountainmontessori.com'
    fill_in 'Password', with: 'bunghole'

    click_button 'Login'

    expect(page).to have_link('Create User')

    click_link 'Create User'

    fill_in 'First name', with: 'bob'
    fill_in 'Last name', with: 'smith'
    fill_in 'Email', with: 'bob@smith.com'
    fill_in 'Password', with: 'Test123'
    fill_in 'Password confirmation', with: 'Test123'

    click_button 'Create'

    expect(page).to have_text('The new user was successfully created.')

  end


end
