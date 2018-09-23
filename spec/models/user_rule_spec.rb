require "rails_helper"

RSpec.describe UserRule, type: :model do
  it { should belong_to(:user) }

  it { should belong_to(:rule) }

  it "the active should be true by default" do
    user_rule = create(:user_rule)

    expect(user_rule.active).to be_truthy
  end
end
