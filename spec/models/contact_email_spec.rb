require "rails_helper"

RSpec.describe ContactEmail, type: :model do
  let(:email) { create(:contact_email) }

  it { is_expected.to validate_presence_of(:email) }

  it { is_expected.to_not allow_value("jonh@example").for(:email) }

  it { is_expected.to_not allow_value("@example.com").for(:email) }

  it "the active should be true by default" do
    expect(email.active).to be_truthy
  end
end
