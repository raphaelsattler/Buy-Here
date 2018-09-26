require "rails_helper"

RSpec.describe RoleRule, type: :model do
  let(:role_rule) { create(:role_rule) }

  it { is_expected.to belong_to(:rule) }
  it { is_expected.to belong_to(:role) }

  it "the active should be true by default" do
    expect(role_rule.active).to be_truthy
  end
end
