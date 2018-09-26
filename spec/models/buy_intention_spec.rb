require "rails_helper"

RSpec.describe BuyIntention, type: :model do
  it { should have_many(:people) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    buy_intention = create(:buy_intention)

    expect(buy_intention.active).to be_truthy
  end
end
