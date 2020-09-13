FactoryBot.define do
  factory :author do
    name { Faker::Name.first_name }
    surname { Faker::Name.middle_name }
  end
end