FactoryBot.define do
  factory :models_list do
    code { Faker::Lorem.characters(10) }
    name_of_model { Faker::Pokemon.name }
  end
end
