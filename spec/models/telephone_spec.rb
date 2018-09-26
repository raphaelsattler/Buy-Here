require "rails_helper"

RSpec.describe Telephone, type: :model do
  let(:telephone) { create(:telephone) }

  it { is_expected.to belong_to(:person) }
  it { is_expected.to belong_to(:telephoneable) }
  it { is_expected.to validate_presence_of(:ddi_number) }
  it { is_expected.to validate_length_of(:ddi_number).is_at_most(3) }
  it { is_expected.to validate_presence_of(:ddd_number) }
  it { is_expected.to validate_length_of(:ddd_number).is_at_most(2) }
  it { is_expected.to validate_presence_of(:telephone_number) }
  it { is_expected.to validate_length_of(:telephone_number).is_at_most(10) }

  it "the active should be true by default" do
    expect(telephone.active).to be_truthy
  end
end
