FactoryBot.define do
  factory :contact_email do
    email { Faker::Internet.email }
  end

  factory :address do
    address_type { "Home" }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    complement { "" }
    zip_code { Faker::Address.zip_code }
    district { "Center" }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
  end
end
