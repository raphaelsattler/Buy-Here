require "rails_helper"

RSpec.describe TelephoneType, type: :model do
  it { should have_many(:telephones) }
end
