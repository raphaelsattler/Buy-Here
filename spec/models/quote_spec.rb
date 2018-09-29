require "rails_helper"

RSpec.describe Quote, type: :model do
  let(:quote) { create(:quote) }

  it { is_expected.to validate_length_of(:code).is_at_most(255) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_numericality_of(:code).only_integer }
  it { is_expected.to validate_numericality_of(:code).is_greater_than(0) }
  it { is_expected.to validate_uniqueness_of(:code).case_insensitive }
  it { is_expected.to validate_presence_of(:request_value) }
  it { is_expected.to validate_numericality_of(:request_value).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_presence_of(:total_value) }
  it { is_expected.to validate_numericality_of(:total_value).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_presence_of(:discount) }
  it { is_expected.to validate_numericality_of(:discount).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_numericality_of(:discount).is_less_than_or_equal_to(100) }
end
