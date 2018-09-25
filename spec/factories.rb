FactoryBot.define do
  factory :profile do
    name { Faker::Pokemon.name }
  end

  factory :membership do
    group { association(:group) }
  end

  factory :quote_type do
    name { Faker::Name.name }
  end

  factory :address_type do
    name { Faker::Pokemon.name }
  end

  factory :telephone_type do
    name { Faker::Pokemon.name }
  end

  factory :group do
    name { Faker::Job.position }
  end

  factory :contact_email do
    email { Faker::Internet.email }
  end

  factory :address do
    addressable { association(:address_type) }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    zip_code { Faker::Address.zip_code }
    district { Faker::Pokemon.name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
  end

  factory :telephone do
    telephoneable { association(:telephone_type) }
    ddi_number { Faker::Number.between(1, 999) }
    ddd_number { Faker::Number.between(1, 99) }
    telephone_number { Faker::Number.number(9) }
  end

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
