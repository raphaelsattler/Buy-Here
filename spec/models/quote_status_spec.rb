require 'rails_helper'

RSpec.describe QuoteStatus, type: :model do
  it { should validate_presence_of(:name)}
  it { should validate_length_of(:name).is_at_most(255)}

  it { should validate_presence_of(:order)}
  it { should validate_length_of(:order).is_at_most(255)}
  # validate format of order
  it { should_not allow_value("$$%@!%").for(:order)}
  it { should_not allow_value("ffdfdser").for(:order)}
  it { should_not allow_value("45Fkd55lxm").for(:order)}
  it { should allow_value("6765345").for(:order)}

  it "should be active default 'true'"
  	quote_status = QuoteStatus.create(name: "IBCCoaching", order:"4354")
  	expect(quote_status.active).to be_truthy
  end
end
