require "rails_helper"

RSpec.describe Membership, type: :model do
  it { should belong_to (:group) }

  it "the active should be true by default" do
    group = create(:group)
    membership = Membership.create!(group: group)
    expect(membership.active).to be_truthy
  end
end
