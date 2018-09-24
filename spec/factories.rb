FactoryBot.define do
  factory :quote_status do
    name "In analysis"
    order "21"
  end
  factory :group do
    name { Faker::Job.position }
  end
  factory :contact_email do
    email { Faker::Internet.email }
  end
end
