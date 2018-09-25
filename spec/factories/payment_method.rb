FactoryBot.define do
  factory :payment_method do
    name { Faker::Name.name }
    rate { Faker::Number.positive }
  end
end