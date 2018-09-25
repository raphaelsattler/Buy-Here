FactoryBot.define do
  factory :contact_email do
    person { Person.first || association(:person) }
    email { Faker::Internet.email }
  end
end
