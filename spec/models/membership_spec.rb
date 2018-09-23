require "rails_helper"

RSpec.describe Membership, type: :model do
  it { should belong_to(:user) }

  it { should belong_to(:group) }

  it "the active should be true by default" do
    membership = create(:membership)
    expect(membership.active).to be_truthy
  end
end
