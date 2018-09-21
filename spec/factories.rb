FactoryBot.define do
  factory :service do
    digit = Faker::Number.between(1, 10)

    code { Faker::Number.number(digit) }
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    value { Faker::Number.decimal(digit, 2) }
  end
  factory :product do
    digit = Faker::Number.between(1, 10)

    code { Faker::Number.number(digit) }
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    value { Faker::Number.decimal(digit, 2) }
  end
  factory :payment_method do
    name { Faker::Name.name }

    left = Faker::Number.digit.to_i
    right = Faker::Number.digit.to_i
    rate { Faker::Number.decimal(left, right) }
  end
  factory :installment do
    digit = Faker::Number.digit
    value = Faker::Number.decimal(digit.to_i, 2)

    value { value }
    off { Faker::Number.between(0, 100) }
    due_date { Faker::Date.forward }
    payment_date { Faker::Date.forward }
    payment_method { PaymentMethod.first || association(:payment_method) }
  end
end
