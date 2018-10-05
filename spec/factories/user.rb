FactoryBot.define do
  factory :user do
    role { association(:role) }
    username { Faker::Hobbit.character }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    reset_password_sent_at { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    token_recovery_expire_at { Faker::Time.between(DateTime.now, DateTime.now + 1) }
  end
end
