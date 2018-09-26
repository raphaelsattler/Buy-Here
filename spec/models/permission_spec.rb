require "rails_helper"

RSpec.describe Permission, type: :model do
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_uniqueness_of(:code) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:description) }

  it "the active should be true by default" do
    permission = create(:permission)

    expect(permission.active).to be_truthy
  end
end
