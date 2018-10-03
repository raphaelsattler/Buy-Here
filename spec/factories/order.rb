FactoryBot.define do
  factory :order do
    quote { association(:quote) }
  end
end
