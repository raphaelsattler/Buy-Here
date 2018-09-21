FactoryBot.define do
  factory :group do
    name { Faker::Job.position }
  end

  factory :contact_email do
    email { Faker::Internet.email }
  end
end
