require "rails_helper"

RSpec.describe Rule, type: :model do
  let(:rule) { create(:rule) }

  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_uniqueness_of(:code) }
  it { is_expected.to validate_presence_of(:description) }

  it "the active should be true by default" do
    rule = create(:rule)

    expect(rule.active).to be_truthy
  end
end
