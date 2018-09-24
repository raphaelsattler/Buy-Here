require "rails_helper"

RSpec.describe TelephoneType, type: :model do
  let(:telephone_type) { create(:telephone_type) }

  it { is_expected.to have_many(:telephones) }

  it "the active should be true by default" do
    expect(telephone_type.active).to be_truthy
  end
end
