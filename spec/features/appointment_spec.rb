require 'rspec'
require './spec/rails_helper'

describe Appointment do

  it 'should be an appointment' do
    expect(subject).to be_a(Appointment)
  end
end

feature 'Scheduling a new tour' do
  scenario 'a parent is scheduling a tour' do
    test = true
  end
end
