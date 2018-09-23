require "rails_helper"

RSpec.describe User, type: :model do
  it { should have_many(:people) }

  it { should have_many(:memberships) }

  it { should have_many(:groups).through(:memberships) }

  it { should have_many(:user_rules) }

  it { should have_many(:rules).through(:user_rules) }

  it { should validate_presence_of(:username) }

  it { should validate_uniqueness_of(:username) }

  it { should validate_presence_of(:email) }

  it { should_not allow_value("jonh@example").for(:email) }

  it { should_not allow_value("@example.com").for(:email) }

  it { should validate_presence_of(:password_digest) }

  it "the active should be true by default" do
    user = create(:user)

    expect(user.active).to be_truthy
  end
end
