FactoryBot.define do
  factory :telephone do
    telephoneable { TelephoneType.first || association(:telephone_type) }
    ddi_number { Faker::Number.between(1, 999) }
    ddd_number { Faker::Number.between(1, 99) }
    telephone_number { Faker::Number.number(9) }
  end
end
