require "rails_helper"

RSpec.describe Installment, type: :model do
  it { should validate_numericality_of(:off).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:off).is_less_than_or_equal_to(100) }
  it { should validate_presence_of(:off) }

  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(0) }
  it { should validate_presence_of(:value) }

  it { should validate_presence_of(:due_date) }

  it { should validate_presence_of(:payment_date) }

  it { should validate_numericality_of(:total_value).is_greater_than_or_equal_to(0) }
  it { should validate_presence_of(:total_value) }

  context "when validate calculates total value" do
    let(:installment) { create(:installment) }
    let(:value) { installment.value }
    let(:off) { installment.off }
    let(:total_value) { value - (value * (off / 100)) }

    it "calculate total value" do
      expect(installment.total_value.round(2)).to eq(total_value.round(2))
    end
  end
end
