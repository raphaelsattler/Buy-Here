FactoryBot.define do
  factory :payment_method do
    name { Faker::Name.name }

    left = Faker::Number.digit.to_i
    right = Faker::Number.digit.to_i
    rate { Faker::Number.decimal(left, right) }
  end
end
