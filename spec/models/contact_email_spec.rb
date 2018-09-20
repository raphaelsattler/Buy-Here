require "rails_helper"

RSpec.describe ContactEmail, type: :model do
  it { should validate_presence_of(:email_address) }

  it { should validate_uniqueness_of(:email_address) }

  it { should_not allow_value("jonh@example").for(:email_address) }

  it { should_not allow_value("@example.com").for(:email_address) }

  it "the active should be true by default" do
    email = ContactEmail.create!(email_address: "john@example.com")
    expect(email.active).to be_truthy
  end
end
