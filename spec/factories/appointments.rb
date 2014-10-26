# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    parent_names { Faker::Name.first_name + ' and ' + Faker::Name.first_name
    + ' ' + Faker::Name.last_name }
    phone_numbers "MyString"
    email_addresses "MyString"
    children_names "MyString"
    children_ages "MyString"
    other_info "MyText"
    tour_date "2014-10-11"
  end
end
