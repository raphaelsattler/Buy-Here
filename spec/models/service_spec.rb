require "rails_helper"

RSpec.describe Service, type: :model do
  let(:service) { create(:service) }

  it { is_expected.to validate_numericality_of(:code).only_integer }
  it { is_expected.to validate_numericality_of(:code).is_greater_than(0) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_length_of(:code).is_at_most(255) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_numericality_of(:value).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_presence_of(:value) }
  it { is_expected.to have_many(:items) }

  it "Uniqueness of code" do
    is_expected.to validate_uniqueness_of(:code).case_insensitive
  end

  it "Uniqueness of name" do
    is_expected.to validate_uniqueness_of(:name).case_insensitive
  end

  it "Default active true" do
    expect(service.active).to be_truthy
  end
end
