require "rails_helper"

RSpec.describe Permission, type: :model do
  let(:permission) { create(:permission) }

  it { is_expected.to have_many(:rules) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_uniqueness_of(:code) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:description) }

  it "the active should be true by default" do
    expect(permission.active).to be_truthy
  end
end
