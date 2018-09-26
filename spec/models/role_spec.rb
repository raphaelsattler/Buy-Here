require "rails_helper"

RSpec.describe Role, type: :model do
  let(:role) { create(:role) }

  it { is_expected.to have_many(:role_rules) }
  it { is_expected.to have_many(:rules).through(:role_rules) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    expect(role.active).to be_truthy
  end
end
