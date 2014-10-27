# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    parent_names { Faker::Name.first_name + ' and ' + Faker::Name.first_name + ' ' + Faker::Name.last_name }
    phone_numbers { Faker::PhoneNumber.phone_number }
    email_addresses { Faker::Internet.email}
    children_names { Faker::Name.first_name + ' and ' + Faker::Name.first_name }
    children_ages { rand(6) + ' , ' + rand(6) }
    other_info { Faker::Lorem.paragraph(2) }
    tour_date { (rand(57)+3).days.from_now }
  end
end
