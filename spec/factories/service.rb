FactoryBot.define do
  factory :service do
    digit = Faker::Number.between(1, 10)

    code { Faker::Number.number(digit) }
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    value { Faker::Number.positive.round(2) }
  end
end
