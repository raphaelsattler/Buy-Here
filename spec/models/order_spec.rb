require "rails_helper"

RSpec.describe Order, type: :model do
  it { is_expected.to have_many(:items) }
  it { is_expected.to belong_to(:quote) }
  it { is_expected.to have_db_index(:quote_id) }
end
