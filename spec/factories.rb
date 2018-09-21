FactoryBot.define do
  factory :group do
    name { "Sellers" }
  end
  
  factory :contact_email do
    email { Faker::Internet.email }
  end
end
