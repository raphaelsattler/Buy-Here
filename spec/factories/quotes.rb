FactoryBot.define do
  factory :quote do
    code { Faker::Number.positive.round(0) }
    request_value { Faker::Number.positive.round(2) }
    discount { Faker::Number.between(0.0, 100.0) }
  end
end
