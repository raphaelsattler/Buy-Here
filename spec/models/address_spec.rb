require "rails_helper"

RSpec.describe Address, type: :model do
  it { should belong_to(:person) }

  it { should belong_to(:address_type) }

  it { should validate_numericality_of(:number), only_integer: true }

  it { should validate_presence_of(:street) }

  it { should validate_presence_of(:district) }

  it { should validate_presence_of(:city) }

  it { should validate_presence_of(:state) }

  it { should validate_presence_of(:country) }

  it "the active should be true by default" do
    address = create(:address)
    expect(address.active).to be_truthy
  end
end
