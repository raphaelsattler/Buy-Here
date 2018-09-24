require "rails_helper"

RSpec.describe Group, type: :model do
  it { should have_many(:groups) }

  it { should belong_to(:parent_group) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    group = create(:group)
    expect(group.active).to be_truthy
  end
end
