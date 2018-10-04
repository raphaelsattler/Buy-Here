FactoryBot.define do
  factory :user do
    role { association(:role) }
    username { Faker::Hobbit.character }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end
