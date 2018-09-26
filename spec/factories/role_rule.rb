FactoryBot.define do
  factory :role_rule do
    rule { association(:rule) }
  end
end
