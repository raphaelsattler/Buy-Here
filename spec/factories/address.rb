FactoryBot.define do
  factory :address do
    person { association(:person) }
    addressable { association(:address_type) }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number.to_i }
    zip_code { Faker::Address.zip_code }
    district { Faker::Pokemon.name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
  end
end
