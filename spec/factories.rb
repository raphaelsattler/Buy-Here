FactoryBot.define do
  factory :contact_email do
    email { Faker::Internet.email }
  end
end
