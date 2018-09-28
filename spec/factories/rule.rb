FactoryBot.define do
  factory :rule do
    code { Faker::Lorem.characters(10) }
    permission { association(:permission) }
    models_list { association(:models_list) }
    description { Faker::Lorem.paragraph }
  end
end
