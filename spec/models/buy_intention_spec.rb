require "rails_helper"

RSpec.describe BuyIntention, type: :model do
  let(:buy_intention) { create(:buy_intention) }

  it { is_expected.to have_many(:people) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    expect(buy_intention.active).to be_truthy
  end
end
