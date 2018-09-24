FactoryBot.define do
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
    addressable { AddressType.first || association(:address_type) }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    zip_code { Faker::Address.zip_code }
    district { Faker::Pokemon.name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
  end

  factory :telephone do
    telephoneable { TelephoneType.first || association(:telephone_type) }
    ddi_number { Faker::Number.between(1, 999) }
    ddd_number { Faker::Number.between(1, 99) }
    telephone_number { Faker::Number.number(9) }
  end
end
