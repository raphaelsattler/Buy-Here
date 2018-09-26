require "rails_helper"

RSpec.describe Membership, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:group) }

  it "the active should be true by default" do
    membership = create(:membership)
    expect(membership.active).to be_truthy
  end
end
