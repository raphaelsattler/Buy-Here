FactoryBot.define do
  factory :membership do
    user { association(:user) }
    group { association(:group) }
  end
end
