# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  surname    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :author do
    name { Faker::Name.first_name }
    surname { Faker::Name.middle_name }
  end
end
