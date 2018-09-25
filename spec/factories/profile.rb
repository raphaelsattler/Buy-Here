FactoryBot.define do
  factory :profile do
    name { Faker::Pokemon.name }
  end
end
