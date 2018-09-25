FactoryBot.define do
  factory :permission do
    code { Faker::Lorem.characters(10) }
    name { Faker::Pokemon.name }
    description { Faker::Lorem.paragraph }
  end
end
