require "rails_helper"

RSpec.describe Address, type: :model do
  let(:address) { create(:address) }

  it { is_expected.to belong_to(:person) }
  it { is_expected.to belong_to(:addressable) }
  it { is_expected.to validate_numericality_of(:number), only_integer: true }
  it { is_expected.to validate_presence_of(:street) }
  it { is_expected.to validate_presence_of(:district) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:country) }

  it "the active should be true by default" do
    expect(address.active).to be_truthy
  end
end
