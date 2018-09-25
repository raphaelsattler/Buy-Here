FactoryBot.define do
  factory :service do
    digit = Faker::Number.between(1, 10)

    code { Faker::Number.number(digit) }
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    value { Faker::Number.decimal(digit, 2) }
  end
end
