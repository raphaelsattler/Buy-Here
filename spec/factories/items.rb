FactoryBot.define do
  factory :item do
    product { Faker::Boolean.boolean(0.5) }
    if product
      saleable { association(:product) }
    else
      saleable { association(:service) }
    end
  end
end
