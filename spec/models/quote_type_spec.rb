require "rails_helper"

RSpec.describe QuoteType, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(255) }
  
  describe "validations" do
    subject { create(:quote_type) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end

  it "Defaults active to true" do
    quote_type = create(:quote_type)
    expect(quote_type.active).to be_truthy
  end
end
