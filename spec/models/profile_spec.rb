require "rails_helper"

RSpec.describe Profile, type: :model do
  let(:profile) { create(:profile) }

  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    expect(profile.active).to be_truthy
  end
end
