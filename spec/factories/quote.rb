FactoryBot.define do
  factory :quote do
    code { Faker::Number.positive.round(0) }
    request_value { Faker::Number.positive.round(2) }
    discount { Faker::Number.between(0.0, 100.0) }
    user { association(:user) }
    quote_status { association(:quote_status) }
    quote_type { association(:quote_type) }
    person { association(:person) }
  end
end
