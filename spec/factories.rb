FactoryBot.define do
  factory :quote_type do
    name { Faker::Name.name }
  end
  factory :contact_email do
    email { Faker::Internet.email }
  end
end
