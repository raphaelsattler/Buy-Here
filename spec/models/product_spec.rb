require "rails_helper"

RSpec.describe Product, type: :model do
  it { is_expected.to validate_numericality_of(:code).only_integer }
  it { is_expected.to validate_numericality_of(:code).is_greater_than(0) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_length_of(:code).is_at_most(255) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
  it { is_expected.to validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { is_expected.to validate_numericality_of(:value).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_presence_of(:value) }

  it "Uniqueness of code" do
    create(:product)
    validate_uniqueness_of(:code)
  end

  it "Uniqueness of name" do
    create(:product)
    validate_uniqueness_of(:name)
  end

  it "Default active true" do
    product = create(:product)
    expect(product.active).to be_truthy
  end
end
