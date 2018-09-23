require "rails_helper"

RSpec.describe Perfil, type: :model do
  it { should have_many(:people) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it "the active should be true by default" do
    perfil = create(:perfil)

    expect(perfil.active).to be_truthy
  end
end
