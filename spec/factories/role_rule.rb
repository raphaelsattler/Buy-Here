FactoryBot.define do
  factory :role_rule do
    rule { association(:rule) }
    role { association(:role) }
  end
end
