require "rails_helper"

RSpec.describe ContactEmail, type: :model do
  it { should validate_presence_of(:email) }

  it { should_not allow_value("jonh@example").for(:email) }

  it { should_not allow_value("@example.com").for(:email) }

  it "the active should be true by default" do
    email = create(:contact_email)
    expect(email.active).to be_truthy
  end
end
