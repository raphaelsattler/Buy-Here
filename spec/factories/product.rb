FactoryBot.define do
  factory :product do
    code { Faker::Number.positive.round(0) }
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    value { Faker::Number.positive.round(2) }
  end
end
