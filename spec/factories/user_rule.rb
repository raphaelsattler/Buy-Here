FactoryBot.define do
  factory :user_rule do
    user { association(:user) }
    rule { association(:rule) }
  end
end
