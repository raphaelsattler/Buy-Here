require "rails_helper"

RSpec.describe Permission, type: :model do
  it { should have_many(:rules) }

  it { should validate_presence_of(:code) }

  it { should validate_uniqueness_of(:code) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of(:description) }

  it "the active should be true by default" do
    permission = create(:permission)

    expect(permission.active).to be_truthy
  end
end
