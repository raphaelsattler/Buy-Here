require "rails_helper"

RSpec.describe QuoteType, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(255) }

  it { should validate_presence_of(:order) }
  it { should validate_length_of(:order).is_at_most(255) }
  # should order be number in string
  it { should_not allow_value("/423%&*").for(:order) }
  it { should_not allow_value("435fddf").for(:order) }
  it { should_not allow_value("%#$}/").for(:order) }
  it { should allow_value("12345").for(:order) }

  it "should be active true default" do
    quote_type = QuoteType.create(name: "Teste", order: "1")
    expect(quote_type.active).to be_truthy
  end
end
