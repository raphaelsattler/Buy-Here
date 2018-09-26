require "rails_helper"

RSpec.describe Group, type: :model do
  let(:group) { create(:group) }

  it { is_expected.to have_many(:groups) }

  it { is_expected.to belong_to(:parent) }

  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to validate_uniqueness_of(:name) }

  it { should have_many(:users).through(:memberships) }

  it "the active should be true by default" do
    expect(group.active).to be_truthy
  end
end
