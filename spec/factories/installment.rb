FactoryBot.define do
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
