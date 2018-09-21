require "rails_helper"

RSpec.describe PaymentMethod, type: :model do
  it { should have_many(:installments) }

  it { should validate_length_of(:name).is_at_most(255) }
  it { should validate_presence_of(:name) }
  describe "validations" do
    subject { create(:payment_method) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end

  it "Default to due false" do
    payment_method = create(:payment_method)
    expect(payment_method.due).to_not be_truthy
  end

  it "Default to active true" do
    payment_method = create(:payment_method)
    expect(payment_method.active).to be_truthy
  end

  it { should validate_numericality_of(:rate).is_greater_than_or_equal_to(0) }
  it { should validate_presence_of(:rate) }
end
