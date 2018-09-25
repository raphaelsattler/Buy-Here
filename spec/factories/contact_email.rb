FactoryBot.define do
  factory :contact_email do
    person { association(:person) }
    email { Faker::Internet.email }
  end
end
