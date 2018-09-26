FactoryBot.define do
  factory :quote_status do
    name { Faker::Name.name }
    order { Faker::Number.digit }
  end
end
