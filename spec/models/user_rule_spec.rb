require "rails_helper"

RSpec.describe UserRule, type: :model do
  let(:user_rule) { create(:user_rule) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:rule) }

  it "the active should be true by default" do
    expect(user_rule.active).to be_truthy
  end
end
