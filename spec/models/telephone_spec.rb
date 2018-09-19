require "rails_helper"

RSpec.describe Telephone, type: :model do
  it { should validate_presence_of(:telephone_type) }

  it { should validate_length_of(:telephone_type).is_at_most(255) }

  it { should validate_presence_of(:ddi_number) }

  it { should validate_length_of(:ddi_number).is_at_most(3) }

  it { should validate_presence_of(:ddd_number) }

  it { should validate_length_of(:ddd_number).is_at_most(2) }

  it { should validate_presence_of(:telephone_number) }

  it { should validate_length_of(:telephone_number).is_at_most(10) }

  it "the active should be true by default" do
    tel = Telephone.create!(telephone_type: "cel", ddi_number: "43", ddd_number: "34", telephone_number: "123456789")

    expect(tel.active).to be_truthy
  end
end
