require "rails_helper"

RSpec.describe Telephone, type: :model do
  it { should belong_to(:telephone_type) }

  it { should validate_presence_of(:ddi_number) }

  it { should validate_length_of(:ddi_number).is_at_most(3) }

  it { should validate_presence_of(:ddd_number) }

  it { should validate_length_of(:ddd_number).is_at_most(2) }

  it { should validate_presence_of(:telephone_number) }

  it { should validate_length_of(:telephone_number).is_at_most(10) }

  it "the active should be true by default" do
    tel = create(:telephone)

    expect(tel.active).to be_truthy
  end
end
