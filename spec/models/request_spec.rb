require "rails_helper"

RSpec.describe Request, type: :model do
  let(:request) { create(:request) }

  it { is_expected.to validate_numericality_of(:off).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_numericality_of(:off).is_less_than_or_equal_to(100) }
  it { is_expected.to validate_presence_of(:off) }
  it { is_expected.to belong_to(:item) }
end
