require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { is_expected.to have_many(:people) }
  it { is_expected.to have_many(:memberships) }
  it { is_expected.to have_many(:groups).through(:memberships) }
  it { is_expected.to have_many(:user_rules) }
  it { is_expected.to have_many(:rules).through(:user_rules) }
  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_uniqueness_of(:username) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to_not allow_value("jonh@example").for(:email) }
  it { is_expected.to_not allow_value("@example.com").for(:email) }
  it { is_expected.to validate_presence_of(:password_digest) }

  it "the active should be true by default" do
    expect(user.active).to be_truthy
  end
end
