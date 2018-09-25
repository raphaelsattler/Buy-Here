require "rails_helper"

RSpec.describe Membership, type: :model do
<<<<<<< HEAD
  let(:membership) { create(:membership) }

  it { is_expected.to belong_to(:group) }

  it "the active should be true by default" do
=======
  it { should belong_to(:group) }

  it "the active should be true by default" do
    membership = create(:membership)
>>>>>>> Merged development
    expect(membership.active).to be_truthy
  end
end
