FactoryBot.define do
  factory :rule do
    code { Faker::Lorem.characters(10) }
    permission { Permission.first || association(:permission) }
    description { Faker::Lorem.paragraph }
  end
end
