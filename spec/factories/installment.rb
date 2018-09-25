FactoryBot.define do
  factory :installment do
    value { Faker::Number.positive.round(2) }
    off { Faker::Number.between(0, 100) }
    due_date { Faker::Date.forward }
    payment_date { Faker::Date.forward }
    payment_method { association(:payment_method) }
  end
end
