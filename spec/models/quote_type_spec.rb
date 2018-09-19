require "rails_helper"

RSpec.describe QuoteType, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(255) }
  describe "validations" do
    subject { QuoteType.create(name: "Type 1") }
    it { should validate_uniqueness_of(:name) }
  end

  it "Defaults active to true" do
    quote_type = QuoteType.create(name: "Teste")
    expect(quote_type.active).to be_truthy
  end
end
