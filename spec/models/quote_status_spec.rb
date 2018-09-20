require "rails_helper"

RSpec.describe QuoteStatus, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(255) }
  describe "validations" do
    subject { quote_status = build(:quote_status) }
    it { should validate_uniqueness_of(:name) }
  end

  it { should validate_presence_of(:order) }
  it { should validate_length_of(:order).is_at_most(255) }
  it { should validate_numericality_of(:order) }

  it "defaults active to true" do
    quote_status = create(:quote_status)
    expect(quote_status.active).to be_truthy
  end
end
