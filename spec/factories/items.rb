FactoryBot.define do
  factory :item do
    product { Faker::Boolean.boolean(0.5) }
    if product
      saleable { association(:product) }
    else
      saleable { association(:service) }
    end
    request { association(:order) }
    discount { Faker::Number.between(0.0, 100.0).round(2) }
  end
end
