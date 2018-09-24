require "rails_helper"

RSpec.describe AddressType, type: :model do
  let(:address_type) { create(:address_type) }

  it { is_expected.to have_many(:addresses) }

  it "the active should be true by default" do
    expect(address_type.active).to be_truthy
  end
end
