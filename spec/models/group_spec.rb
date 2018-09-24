require "rails_helper"

RSpec.describe Group, type: :model do
  it { is_expected.to have_many(:groups) }

  it { is_expected.to belong_to(:parent) }

  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    expect(create(:group).active).to be_truthy
  end
end
