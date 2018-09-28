FactoryBot.define do
  factory :request do
    item { association(:item) }
    off { Faker::Number.positive.round(2) }
  end
end
