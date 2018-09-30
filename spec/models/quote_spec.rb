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
  it { is_expected.to validate_presence_of(:discount) }
  it { is_expected.to validate_numericality_of(:discount).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_numericality_of(:discount).is_less_than_or_equal_to(100) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:quote_status) }
  it { is_expected.to belong_to(:quote_type) }
  it { is_expected.to belong_to(:person) }
  it { is_expected.to have_db_index(:user_id) }
  it { is_expected.to have_db_index(:quote_status_id) }
  it { is_expected.to have_db_index(:quote_type_id) }
  it { is_expected.to have_db_index(:person_id) }
  it { is_expected.to have_one(:order) }

  context "when validate calculate total value" do
    let(:discount) { quote.discount.to_d }
    let(:request_value) { quote.request_value.to_d }
    let(:total_value) { request_value - (request_value * (discount / 100)) }

    it "calculate total value" do
      expect(quote.total_value.round(2)).to eq(total_value.round(2))
    end
  end
end
