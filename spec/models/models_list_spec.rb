require "rails_helper"

RSpec.describe ModelsList, type: :model do
  let(:models_list) { create(:models_list) }

  it { is_expected.to have_many(:rules) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_uniqueness_of(:code) }
  it { is_expected.to validate_presence_of(:name_of_model) }
  it { is_expected.to validate_uniqueness_of(:name_of_model) }

  it "the active should be true by default" do
    expect(models_list.active).to be_truthy
  end
end
