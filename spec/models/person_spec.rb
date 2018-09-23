require "rails_helper"

RSpec.describe Person, type: :model do
  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of(:social_name) }

  it { should validate_uniqueness_of(:social_name) }

  it { should validate_presence_of(:email) }

  it { should_not allow_value("jonh@example").for(:email) }

  it { should_not allow_value("@example.com").for(:email) }

  it { should validate_uniqueness_of(:cpf) }

  it { should_not allow_value(Faker::IDNumber.invalid).for(:cpf) }

  it { should validate_uniqueness_of(:cnpj) }

  it { should_not allow_value(Faker::IDNumber.invalid).for(:cpf) }

  it { should validate_uniqueness_of(:rg) }

  it { should validate_length_of(:uf_expediter_rg) }

  it "the active should be true by default" do
    person = create(:person)

    expect(person.active).to be_truthy
  end
end
