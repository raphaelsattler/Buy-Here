FactoryBot.define do
  factory :membership do
    group { association(:group) }
  end
end
