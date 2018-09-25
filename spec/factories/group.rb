FactoryBot.define do
  factory :group do
    name { Faker::Job.position }
  end
end
