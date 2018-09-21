require "rails_helper"

RSpec.describe Service, type: :model do
  it { should validate_numericality_of(:code).only_integer }
  it { should validate_numericality_of(:code).is_greater_than(0) }
  it { should validate_presence_of(:code) }
  it { should validate_length_of(:code).is_at_most(255) }
  it "Uniqueness of code" do
    create(:product)
    validate_uniqueness_of(:code)
  end

  it { should validate_length_of(:name).is_at_most(255) }
  it { should validate_presence_of(:name) }
  it "Uniqueness of name" do
    create(:product)
    validate_uniqueness_of(:name)
  end

  it { should validate_presence_of(:description) }

  it "Default active true" do
    product = create(:product)
    expect(product.active).to be_truthy
  end

  it { should validate_numericality_of(:value).is_greater_than_or_equal_to(0) }
  it { should validate_presence_of(:value) }

  it { have_many(:items)}
end
