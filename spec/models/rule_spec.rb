require "rails_helper"

RSpec.describe Rule, type: :model do
  it { should have_many(:role_rules) }

  it { should validate_presence_of(:code) }

  it { should validate_uniqueness_of(:code) }

  it { should validate_presence_of(:description) }

  it "the active should be true by default" do
    rule = create(:rule)

    expect(rule.active).to be_truthy
  end
end
