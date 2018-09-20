require "rails_helper"

RSpec.describe Group, type: :model do
  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it { should have_many(:memberships) }

  it "the active should be true by default" do
    group = create(:group)
    expect(group.active).to be_truthy
  end
end
