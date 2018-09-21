FactoryBot.define do
  factory :membership do
    group { Group.first || association(:group) }
  end

  factory :group do
    name { Faker::Job.position }
  end

  factory :contact_email do
    email { Faker::Internet.email }
  end
end
