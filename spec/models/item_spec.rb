require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) }

  it { is_expected.to belong_to(:saleable) }
end
