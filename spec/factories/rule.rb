FactoryBot.define do
  factory :rule do
    code { Faker::Lorem.characters(10) }
    permission { association(:permission) }
    description { Faker::Lorem.paragraph }
  end
end
