require "rails_helper"

RSpec.describe Person, type: :model do
  it {  is_expected.to have_many(:telephones) }
  it {  is_expected.to have_many(:addresses) }
  it {  is_expected.to have_many(:contact_emails) }
  it {  is_expected.to belong_to(:profile) }
  it {  is_expected.to belong_to(:buy_intention) }
  it {  is_expected.to validate_presence_of(:name) }
  it {  is_expected.to validate_presence_of(:social_name) }
  it {  is_expected.to validate_presence_of(:email) }
  it {  is_expected.to_not allow_value("jonh@example").for(:email) }
  it {  is_expected.to_not allow_value("@example.com").for(:email) }
  it {  is_expected.to validate_uniqueness_of(:cpf) }
  it {  is_expected.to_not allow_value(Faker::IDNumber.invalid).for(:cpf) }
  it {  is_expected.to validate_uniqueness_of(:cnpj) }
  it {  is_expected.to_not allow_value(Faker::IDNumber.invalid).for(:cpf) }
  it {  is_expected.to validate_uniqueness_of(:rg) }
  it {  is_expected.to validate_length_of(:uf_expediter_rg) }

  it "the active should be true by default" do
    person = create(:person)

    expect(person.active).to be_truthy
  end
end
