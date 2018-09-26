require "rails_helper"

RSpec.describe Role, type: :model do
  it { should have_many(:role_rules) }

  it { should have_many(:rules).through(:role_rules) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    expect(role.active).to be_truthy
  end
end
