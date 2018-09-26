require "rails_helper"

RSpec.describe QuoteStatus, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
  it { is_expected.to validate_presence_of(:order) }
  it { is_expected.to validate_length_of(:order).is_at_most(255) }
  it { is_expected.to validate_numericality_of(:order) }

  it "defaults active to true" do
    quote_status = create(:quote_status)
    expect(quote_status.active).to be_truthy
  end

  describe "validations" do
    subject { quote_status = build(:quote_status) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
