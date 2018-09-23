require "rails_helper"

RSpec.describe RoleRule, type: :model do
  it { should belong_to(:rule) }

  it { should belong_to(:role) }

  it "the active should be true by default" do
    role_rule = create(:role_rule)

    expect(role_rule.active).to be_truthy
  end
end
