require "rails_helper"

RSpec.describe QuoteType, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(255) }

  it { should validate_presence_of(:order) }
  it { should validate_numericality_of(:order) }

  it "Defaults active to true" do
    quote_type = QuoteType.create(name: "Teste", order: "1")
    expect(quote_type.active).to be_truthy
  end
end
